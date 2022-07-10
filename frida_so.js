//-------------------------define-------------------------------
var idx = 0
//-------------------------mian-------------------------------
//setTimeout((v0) => {bytevc1_decoder_init(v0)},1500,"libByteVC1_dec.so") 
var so = "libByteVC1_dec.so"
so = "libttheif_dec.so"
var lib = Module.findBaseAddress(so)
while(lib==null){
	lib = Module.findBaseAddress(so)
}
bytevc1_decoder_init(lib)

//-------------------------func-------------------------------
function bytevc1_decoder_init(lib){
	var offset = 0x67E0 //j_bytevc1_decoder_init
//	offset = 0x1CBD8 //ByteVC1_dec_create
//	offset = 0x1d1b0 //ByteVC1_dec_create
	offset = 0x6a40 //extract_yuv_data
	var arg1,arg2
	var buff
	Interceptor.attach(lib.add(offset+1),{
            onEnter(args){
				arg1 = args[0]
				arg2 = args[1]
				show_view(this)
				show_telescope_view(arg1)
				show_telescope_view(arg2)
				show_telescope_view(arg1.add(0x30))
				show_telescope_view(arg1.add(0x40))
            },onLeave(ret){
				var size = 0x6c00 //0xa8c00
//				log("ret->a1->\n"+hexdump(arg1,{offset:0,length:0x50,header:true,ansi:true}))
				//var yuv_data = hexdump(arg2,{offset:0,length:size,header:false,ansi:false})
				var yuv_data = Memory.readByteArray(arg2,size)
				//writeFile(yuv_data)
//				send("idx->"+idx)
				idx++
			}
        })
}
function writeFile(content) {
 var file = new File("/sdcard/yuv_data.log","a");//a+表示追加内容，此处的模式和c语言的fopen函数模式相同
 file.write(content);
 file.flush()
 file.close();
}
