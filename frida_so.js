//-------------------------define-------------------------------
var idx = 0
//-------------------------mian-------------------------------
var width,mheight,mwidth
var size

libByteVC1_dec_so("libByteVC1_dec.so")
libttheif_dec_so("libttheif_dec.so")

//-------------------------func-------------------------------
function libByteVC1_dec_so(so){
	var lib = Module.findBaseAddress(so)
	while(lib == null){
		lib = Module.findBaseAddress(so)
	}
	byteVC1_dec_decode(lib)
	byteVC1_dec_create(lib)
}


function libttheif_dec_so(so){
	var lib = Module.findBaseAddress(so)
	while(lib == null){
		lib = Module.findBaseAddress(so)
	}
	//bytevc1_get_ttframe_infos(lib)
	//get_width_height(lib)
	//save_output_buff(lib)
	//get_ByteVC1_get_frame_data_return()
	//get_ByteVC1_get_frame_stride_return()
}

function byteVC1_dec_create(lib){
	b(lib.add(0x1CBD8+1),ctx => {
		
	},ctx => {
		send("reutn->")
		tele(ctx.r0)
	})	
}
function hook(lib){
	b(lib.add(0x740a+1),ctx => {
		send("r0->")
		tele(ctx.r0)
	})
		
}

function byteVC1_dec_decode(lib){
	var r2	
	b(lib.add(0x1d1b0+1),ctx => {
		r2 = ctx.r0
		send("dec -> decode->r0")
		tele(r2)
	},ctx => {
//		send("decode->r2")
//		tele(r2.add(0x30))
	})
}

function get_ByteVC1_get_frame_stride_return(){
	b(lib.add(0x6974+4+1),ctx => {
		send("ByteVC1_get_frame_stride() return ->"+ctx.r0)
	})
}
function get_ByteVC1_get_frame_data_return(){
	b(lib.add(0x695c+4+1),ctx => {
		send("ByteVC1_get_frame_data() return ->"+ctx.r0)
	})
}

function bytevc1_get_ttframe_infos(lib){
	var input_buff
	var r0
	b(lib.add(0x691c+1),ctx => {  //call bytevc1_get_ttframe_infos
		r0 = ctx.r1
		send("brfor->input_buff->"+r0)	
		tele(r0)
		tele(r0.add(0x28))
		tele(r0.add(0x28).add(0x28))
	},ctx => {
	})
}

function get_width_height(lib){
	var offset = 0x691c //onleave->(onenter->args[0])
	b(lib.add(offset+1),
		ctx => {
			width = ctx.r0 
		},ctx => {
	//		if(mwidth!=null) return;
			mwidth = width.add(0xc).readPointer()
			mheight = width.add(0xc+0x4).readPointer()
				send("width->"+mwidth)		
				send("height->"+mheight)	
		})
}
function save_output_buff(lib){
	var offset = 0x6a40
	var out_buffer 
	b(lib.add(offset + 1),
            ctx => {
				//show_view(ctx.this.this)
				send("out_buffer->"+ctx.r1+"["+idx+"]")
				send("width->"+ctx.sp.add(0x0014).readPointer())
				send("height->"+ctx.sp.add(0x0018).readPointer())
				out_buffer = ctx.r1
				idx++
            },ctx => {
				send("insize->"+ctx.r0)
				size = ctx.r0
				writeFile(Memory.readByteArray(out_buffer,parseInt(size)),"out_data_yuv.yuv")
			})
}

function writeFile(content,file) {
	var file = new File("/sdcard/"+file,"a+");//a+表示追加内容，此处的模式和c语言的fopen函数模式相同
	file.write(content);
	file.flush()
	file.close();
}
