#!/usr/bin/python3
# -*- coding: UTF-8 -*-
import frida,sys,os

width = int(os.get_terminal_size().columns)
message_tag = " send "
end_line_len = 4
tele_tag = "tele_tag"
register_tag = "register_tag"
view_registers = " registers "
view_stack = " stack "
view_code = " code "
stack_base = 0
code_base = 0
color_format_value_grey = "0"
color_format_value_red = "31" 
color_format_value_green = "32"
color_format_value_yellow = "33"
color_format_value_bule = "34"
color_format_value_pink = "35"
color_format_value_cyan = "36"
init_segment_address_tag  = "$$$$INIT_SEGMENT$$$$"
clear_tag = "$$$$clear_tag$$$$"
architecture_bit = 32  #架构位数 目前只是在32位lib中测试过 
step = 32/8 
payload = ""
wecome = """
 _      _______________  _  ____  _______  __  __   __
| | /| / / __/ ___/ __ \/ |/ /  |/  / __/  \ \/ /_ / /
| |/ |/ / _// /__/ /_/ /    / /|_/ / _/     \  / // /
|__/|__/___/\___/\____/_/|_/_/  /_/___/     /_/\___/ 
"""
print("\033[32m{0}\033[0m".format(wecome))

#显示头部颜色代表数据说明信息
def show_head_view_tips_info_color():
    print("[ Legend: \033[31m{0}\033[0m | \033[31m{1}\033[0m | \033[32m{2}\033[0m | \033[35m{3}\033[0m | \033[33m{4}\033[0m ]".format("Modified register","Code","Heap","Stack","String"))

#显示一条分割线
def show_line_view():
    print("─"*int(width - end_line_len - int(len(message_tag))) + "\033[36m"+message_tag+"\033[0m"+"─"*end_line_len+"\n")

def check_is_need_clear_view():
    if clear_tag in payload:
        print("\n"*100)
        print("\033[32m{0}\033[0m".format(wecome))
        return True
    else:
        return False 


#检查是否需要改变分割线的标签
def check_is_view_tag(message):
    global payload
    if(type(message['payload']) == list):
        payload = str(message['payload'][1])  #[1]有值则表示需要改变tag名
    elif(type(message['payload']) == str):
        payload = message['payload']
    elif(type(message['payload']) == dict):
        payload = message['payload']
    else:
        payload = message['payload']
    update_is_view_tag() 

#改变分割线的标签
def update_is_view_tag():
    global payload,message_tag
    if view_registers in payload:
        message_tag = view_registers 
    elif view_stack in payload:
        message_tag = view_stack
    elif view_code in payload:
        message_tag = view_code
    else:
        message_tag = " send "
    
#重置数据索引
def reset_send_payload(message):
    global payload
    if(type(message['payload']) == list):
        payload = str(message['payload'][0])  ##这里使用数组的数据块
    elif(type(message['payload']) == str):
        payload = message['payload']
    elif(type(message['payload']) == dict):
        payload = message['payload']
    else:
        payload = message['payload']

#改变文字的颜色
def update_show_text_view_color(data,color,types):
    if(types == tele_tag):
        if(color == color_format_value_pink or color == color_format_value_red):
            print("\033[36m{0}\033[0m│+{1}: \033[{3}m{2}\033[0m  →  {4}".format(data[0],"0x%04x" % int(data[1],10),"0x%08x" % int(data[2],16),color,"0x%08x" % int(data[3],16)))
        else:
            print("\033[36m{0}\033[0m│+{1}: \033[{3}m{2}\033[0m".format(data[0],"0x%04x" % int(data[1],10),"0x%08x" % int(data[2],16),color))
    elif(types == register_tag):
        if(color == color_format_value_pink or color == color_format_value_red):
            print("\033[31m${0}\033[0m  : \033[{2}m{1}\033[0m  →  {3}".format("{:<3s}".format(data[0]),"0x%08x" % int(data[1],16),color,"0x%08x" % int(data[2],16)))
        else:
            print("\033[31m${0}\033[0m  : \033[{2}m{1}\033[0m".format("{:<3s}".format(data[0]),"0x%08x" % int(data[1],16),color))
    else:
        return

#格式化显示tele格式的地址内存信息
def show_tele_view():
    split = payload.split(tele_tag)
    for i in range(len(split)-1):
        data = split[i].split("│")
        if(int(data[2],16) == 0): #值为0 显示灰色
            update_show_text_view_color(data,color_format_value_grey,tele_tag)
        elif(stack_base != 0 and hex(int(data[2],16) >>16<<16) == stack_base): 
            update_show_text_view_color(data,color_format_value_pink,tele_tag)
        elif(code_base != 0 and hex(int(data[2],16) >>16<<16) == code_base): 
            update_show_text_view_color(data,color_format_value_red,tele_tag)
        else:
            update_show_text_view_color(data,color_format_value_bule,tele_tag)

#格式化显示registers内存信息
def show_registers_view():
    split = payload.split(register_tag)
    for i in range(len(split)-1):
        data = split[i].split("│")
        if(int(data[1],16) == 0): 
            update_show_text_view_color(data,color_format_value_grey,register_tag)
        elif(stack_base != 0 and hex(int(data[1],16) >>16<<16) == stack_base): 
            update_show_text_view_color(data,color_format_value_pink,register_tag)
        elif(code_base != 0 and hex(int(data[1],16) >>16<<16) == code_base): 
            update_show_text_view_color(data,color_format_value_red,register_tag)
        else:
            update_show_text_view_color(data,color_format_value_bule,register_tag)

#检查是只是打印初始化值
def check_is_init_segment_address():
    if init_segment_address_tag in payload:
        global  stack_base,code_base
        stack = payload.split(init_segment_address_tag)[0]
        code = payload.split(init_segment_address_tag)[1]
        stack_base = hex(int(stack,16) >> 16 << 16)
        code_base = hex(int(code,16) >> 16 << 16)
        return True
    else:
        return False 


def on_message(message,data):
    if message['type'] == 'send':
        global payload
        check_is_view_tag(message) 
        if(check_is_need_clear_view()==True):
            return
        if(check_is_init_segment_address() == True):
            return
        show_line_view()
        reset_send_payload(message) 
        if tele_tag in payload:
            show_tele_view()
        elif register_tag in payload:
            show_registers_view()
        else:
            payload = str(message['payload']) #还原数组
            print("\033[31m{0}\033[0m".format(payload))
    else:
        print(message)

device = frida.get_usb_device()
process = device.attach('抖音') 
process.enable_debugger()
#pid = device.spawn("com.android.providers.downloads.ui", activity="com.android.providers.downloads.ui.DownloadList") #使用挂起调试时才用

foot = ""
with open("./frida_so.js") as jscode:
    foot += jscode.read()
with open("./utli.js") as jscode:
    foot += jscode.read()

script = process.create_script(foot,runtime='v8')
#script = process.create_script(foot) #暂不支持
script.on('message',on_message)
script.load()
show_head_view_tips_info_color()
script.exports.init(width) #对应js脚本的hook函数init()
#device.resume(pid)  #对应挂起函数调用
sys.stdin.read()
