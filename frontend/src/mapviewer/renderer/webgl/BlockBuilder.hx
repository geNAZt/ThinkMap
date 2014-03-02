package mapviewer.renderer.webgl;
import js.html.Uint8Array;

class BlockBuilder {

	private var buffer : DynamicUint8Array;
	
	public function new() {
		buffer = new DynamicUint8Array(80000);
	}
	
	public function position(x : Float, y : Float, z : Float) : BlockBuilder {
		buffer.addUnsignedShort(Std.int(x * 256 + 0.5));
		buffer.addUnsignedShort(Std.int(y * 256 + 0.5));
		buffer.addUnsignedShort(Std.int(z * 256 + 0.5));
		return this;
	}
	
	public function colour(r : Int, g : Int , b: Int) : BlockBuilder {
		buffer.add(r);
		buffer.add(g);
		buffer.add(b);
		buffer.add(0); // Padding
		return this;
	}
	
	public function texId(start : Int, end : Int) : BlockBuilder {
		buffer.addUnsignedShort(start);
		buffer.addUnsignedShort(end);
		return this;
	}
	
	public function tex(x : Float, y : Float) : BlockBuilder {
		buffer.addUnsignedShort(Std.int(x * 256 + 0.5));
		buffer.addUnsignedShort(Std.int(y * 256 + 0.5));	
		return this;	
	}
	
	public function lighting(light : Int, sky : Int) : BlockBuilder {
		buffer.add(light);
		buffer.add(sky);
		return this;
	}
	
	public function toTypedArray() : Uint8Array {
		var ret = buffer.getArray();
		buffer.free();
		return ret;
	}
}