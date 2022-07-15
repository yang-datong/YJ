#!/usr/bin/python3
# -*- coding: UTF-8 -*-
import frida,sys,os,json


#----------获取配置信息
mjson = ""
with open('./config.json', 'r') as file:
    mjson = json.load(file)
end_line_len = mjson['end_line_len']
code_show_row_number= mjson['code_show_row_number']
view_message = mjson['view_message']
view_stack = mjson['view_stack']
view_code = mjson['view_code']
view_trace = mjson['view_trace']
view_registers = mjson['view_registers']

clear_tag = mjson['clear_tag']
tele_tag = mjson['tele_tag']
register_tag = mjson['register_tag']
code_tag = mjson['code_tag']
trace_tag = mjson['trace_tag']
init_segment_address_tag  = mjson['init_segment_address_tag']

color_format_value_grey = mjson['color_format_value_grey']
color_format_value_red = mjson['color_format_value_red']
color_format_value_green = mjson['color_format_value_green']
color_format_value_yellow = mjson['color_format_value_yellow']
color_format_value_bule = mjson['color_format_value_bule']
color_format_value_pink = mjson['color_format_value_pink']
color_format_value_cyan = mjson['color_format_value_cyan']

wecome = """
 _      _______________  _  ____  _______  __  __   __
| | /| / / __/ ___/ __ \/ |/ /  |/  / __/  \ \/ /_ / /
| |/ |/ / _// /__/ /_/ /    / /|_/ / _/     \  / // /
|__/|__/___/\___/\____/_/|_/_/  /_/___/     /_/\___/ 
"""
width = int(os.get_terminal_size().columns)
stack_base = 0
code_base = 0
step = 4
payload = ""

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
        show_head_view_tips_info_color()
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
    elif view_trace in payload:
        message_tag = view_trace
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
def update_show_text_view_style(data,color,types):
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
            update_show_text_view_style(data,color_format_value_grey,tele_tag)
        elif(stack_base != 0 and hex(int(data[2],16) >>16<<16) == stack_base): 
            update_show_text_view_style(data,color_format_value_pink,tele_tag)
        elif(code_base != 0 and hex(int(data[2],16) >>16<<16) == code_base): 
            update_show_text_view_style(data,color_format_value_red,tele_tag)
        else:
            update_show_text_view_style(data,color_format_value_bule,tele_tag)

#格式化显示registers内存信息
def show_registers_view():
    split = payload.split(register_tag)
    for i in range(len(split)-1):
        data = split[i].split("│")
        if(int(data[1],16) == 0): 
            update_show_text_view_style(data,color_format_value_grey,register_tag)
        elif(stack_base != 0 and hex(int(data[1],16) >>16<<16) == stack_base): 
            update_show_text_view_style(data,color_format_value_pink,register_tag)
        elif(code_base != 0 and hex(int(data[1],16) >>16<<16) == code_base): 
            update_show_text_view_style(data,color_format_value_red,register_tag)
        else:
            update_show_text_view_style(data,color_format_value_bule,register_tag)


def show_trace_view():
    split = payload.split(trace_tag)
    print(split)

#获取目标源文件，进行反汇编代码获取
def dump_target_binary(path,lib_name,row,offset):
    result = os.popen("./.get_target_binary.sh "+path+" "+lib_name + " "+row + " " + offset)
    return result.readlines()


#格式化代码段视图
def show_code_view():
    split = payload.split(code_tag)
    _json = json.loads(split[0])
    offset = str(hex((_json["offset"]))).replace("0x","")
    result = dump_target_binary(_json["path"],_json['name'],code_show_row_number,offset)
    for i in range(len(result)):
        data = result[i].replace("\n","")
        if(i < int(code_show_row_number,10)):
            print("   0x{0}".format(data))
        elif(i == int(code_show_row_number,10)):
            print(" → \033[32m0x{0}\033[0m".format(data))
        else:
            print("   \033[37m0x{0}\033[0m".format(data))
    

#检查是只是初始化值
def check_is_init_segment_address():
    if init_segment_address_tag in payload:
        global  stack_base,code_base,view_code
        stack = payload.split(init_segment_address_tag)[0]
        code = payload.split(init_segment_address_tag)[1]
        view_code = payload.split(init_segment_address_tag)[2]
        step = payload.split(init_segment_address_tag)[3]
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
        elif code_tag in payload:
            show_code_view()
        elif trace_tag in payload:
            show_trace_view()
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
with open("./util.js") as jscode:
    foot += jscode.read()

script = process.create_script(foot,runtime='v8')
#script = process.create_script(foot) #暂不支持
script.on('message',on_message)
script.load()
show_head_view_tips_info_color()
script.exports.init(mjson) #对应js脚本的hook函数init()
#device.resume(pid)  #对应挂起函数调用
sys.stdin.read()
