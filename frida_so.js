//-------------------------define-------------------------------
//var idx = 0
//-------------------------mian-------------------------------
var so = "libByteVC1_dec.so"
so = "libttheif_dec.so"
var lib = Module.findBaseAddress(so)
while(lib==null){
	lib = Module.findBaseAddress(so)
}

bytevc1_decoder_init(lib)
//-------------------------func-------------------------------
function bytevc1_decoder_init(lib){
	get_width_height(lib)
//	save_output_buff(lib)
//	save_input_buff(lib)
}
function save_input_buff(lib){
	var offset = 0x6ae0
	var flg = true
	var input_buff
	b(lib.add(offset+1),ctx => {
		tele(ctx.r1)
		input_buff = ctx.r1
		writeFile(Memory.readByteArray(input_buff,0x54600))
	})
}

function get_width_height(lib){
	var offset = 0x691c //onleave->(onenter->args[0])
	var width,height
	b(lib.add(offset+1),
		ctx => {
			width = ctx.r0 
		},ctx => {
			tele(width.add(0xc))		
		})
}
function save_output_buff(lib){
	var offset = 0x6a40
	var out_buffer 
	var size
	b(lib.add(offset + 1),
            ctx => {
				send("out_buffer->"+ctx.r1)
				out_buffer = ctx.r1
            },ctx => {
				send("size->"+ctx.r0)
				size = ctx.r0
				writeFile(Memory.readByteArray(out_buffer,parseInt(size)))
			})
}

function writeFile(content) {
 var file = new File("/sdcard/yuv_data.yuv","w+");//a+表示追加内容，此处的模式和c语言的fopen函数模式相同
 file.write(content);
 file.flush()
 file.close();
}
