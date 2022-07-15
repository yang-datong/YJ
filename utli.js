//-------------------------define-------------------------------
//配置信息区
var end_line_len
var view_message 
var view_stack 
var view_code 
var view_registers 
var clear_tag 
var tele_tag 
var register_tag
var init_segment_address_tag
rpc.exports.init = mjson => {
	end_line_len = mjson['end_line_len']
	view_message = mjson['view_message']
	view_stack = mjson['view_stack']
	view_code = mjson['view_code']
	view_registers = mjson['view_registers']
	clear_tag = mjson['clear_tag']
	tele_tag = mjson['tele_tag']
	register_tag = mjson['register_tag']
	init_segment_address_tag  = mjson['init_segment_address_tag']
}
//变量区
var message_tag = " log "
var _width = 70
var step = 4

const log = (...info) => {
    var befor = new Array(_width - end_line_len - message_tag.length + 1).join("=")
    var end = new Array(end_line_len).join("=")
    console.log(befor + message_tag + end + "\n")
	console.log(...info);
}

const dump = (...ptr) => { 
	if(ptr[1] == undefined)
		return send(hexdump(ptr[0],{offset:0,length:0x30,header:true,ansi:true}))
	else
		return send(hexdump(ptr[0],{offset:0,length:ptr[1],header:true,ansi:true}))
}
//-------------------------init-------------------------------
//这里是配置信息 需要进行配置上下文对象 往后会对64位so进行支持!!!
/**
		send("id->"+Process.id +
			"\narch->"+Process.arch + 
			"\nplatform->"+Process.platform +
			"\npageSize->"+Process.pageSize +
			"\nisDebuggerAttached->"+Process.isDebuggerAttached()+
			"\ngetCurrentThreadId->"+Process.getCurrentThreadId()+
			"\npointerSize->"+Process.pointerSize )
			*/
//findAll("初始化之前",lib)
//setTimeout((v0,v1) => {findAll(v0,v1)},1700,"初始化之后",lib)

//-------------------------alias-------------------------------
//以更简洁的方式调用（设置别名)
function tele(...args){ show_telescope_view(...args)}
function ls(ctx){ show_view(ctx)}

//-------------------------func-------------------------------
//监控内存数据
function watch(addr,len,lib){
	MemoryAccessMonitor.enable({base:addr,size:len},{
		onAccess(details){
			send("operation->"+details.operation+
				"\nfrom->"+details.from+
				"\naddress->"+(details.address)+
				"\nrangeIndex->"+details.rangeIndex+
				"\npageIndex->"+details.pageIndex+
				"\npagesCompleted->"+details.pagesCompleted+
				"\npagesTotal->"+details.pagesTotal
				)
		}})
}
//用于Interceptor.attach的封装
function b(...args){
	var addr = args[0]
	var on_enter = args[1]
	var on_leave = args[2]
	var is_clear = args[3]

	Interceptor.attach(addr,{
            onEnter(args){
				if(is_clear != undefined)
				send(clear_tag)
				//show_view(this.context)
				if(on_enter != undefined)
					on_enter(this.context)
            },onLeave(ret){
				if(on_leave != undefined)
					on_leave(this.context)
			}
        })
}


//显示一个指针块视图 
function show_telescope_view(...args){
	var data = ""
	var addr = args[0]
	var _addr , ptr
	for(var i = 0 ; i < 10; i++){  //该指针后的10个指针
		_addr = addr.readPointer()
		try{
			ptr = _addr.readPointer()
		}catch(error){
			ptr = 0
		}
		data += (addr + "│" + (i*step) + "│" + _addr + "│" + ptr + tele_tag)
		addr = addr.add(step)
	}
	if(args[1] != null)
		send([data,args[1]])
	else
		send(data)
}
//寄存器视图
function show_registers(...args){
	var context = args[0]
	var data = ""
	var addr,ptr
	for(var key in context){
		addr = context[key]
		try{
			ptr = addr.readPointer()
		}catch(error){
			ptr = 0
		}
		data += (key + "│" + addr + "│"  + ptr + register_tag)
	}
	send([data,view_registers])
}
//向python块发送所需块数据
function init_segment_address(context){
	var stack = context.sp
	var code = context.pc
	var data = stack + init_segment_address_tag + code
	send(data)
}
//显示所有布局视图 
function show_view(context){
	init_segment_address(context)  
	show_registers(context,view_registers) 
	show_telescope_view(context.sp,view_stack) //栈空间视图
}
//所有加载的so 
function findAll(str,lib){
	for(var i in lib){
	console.log(str + lib[i] + "-> ",Module.findBaseAddress(lib[i]))
	}		
}
//so层栈回溯 
function printStack_so(ctx){
	send('So Stack -> :\n' +Thread.backtrace(ctx, Backtracer.ACCURATE).map(DebugSymbol.fromAddress).join('\n') + '\n');
}
//Android层栈回溯 
function printStack(){
	send('Java Stack -> :\n' +Java.use("android.util.Log").getStackTraceString(Java.use("java.lang.Throwable").$new()));
}
//so的所有导出函数 
function export_func(so){
    var exports = Module.enumerateExportsSync(so);
     for(var i = 0; i < exports.length; i++) {
         if(exports[i].name == "ByteVC1_dec_create")
       send(exports[i].name + ": " + exports[i].address+",so->"+so);
    }
}
//so的所有导入函数 
function import_func(so){
    var exports = Module.enumerateImportsSync(so);
     for(var i = 0; i < exports.length; i++) {
         if(exports[i].name == "ByteVC1_dec_create")
       send(exports[i].name + ": " + exports[i].address+",so->"+so);
    }
}
//so的所有导入函数 
function hook_libart() {
    var GetStringUTFChars_addr = null;
    var module_libart = Process.findModuleByName("libart.so");
    var symbols = module_libart.enumerateSymbols();
    for (var i = 0; i < symbols.length; i++) {
        var name = symbols[i].name;
        if ((name.indexOf("JNI") >= 0)
						&& (name.indexOf("CheckJNI") == -1)
						&& (name.indexOf("art") >= 0)) {
            if (name.indexOf("GetStringUTFChars") >= 0) {
                console.log(name);
                // 获取到指定 jni 方法地址
                GetStringUTFChars_addr = symbols[i].address;
            }}}
}
//保存数据到文件
function writeFile(content,file_name) {
	var file = new File("/sdcard/"+file_name,"w+");//a+表示追加内容，此处的模式和c语言的fopen函数模式相同
	file.write(content);
	file.flush()
	file.close();
	send("-----> save: "+file_name+" is done!! <------")
}
