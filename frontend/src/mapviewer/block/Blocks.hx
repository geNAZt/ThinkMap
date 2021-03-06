package mapviewer.block;

/*
		Contains static regerences to blocks needed by the map viewer
 */
import mapviewer.block.BlockRegistry.BlockRegistrationEntry;
class Blocks {

	/// Air - Pretty much what you would expect it to be
	public static var AIR(get, null) : Block;
	static function get_AIR() { if (AIR != null) return AIR; return AIR = BlockRegistry.get("air"); }
	
	/// Bedrock - Unbreakable block (unless Mojang messes up... again)
	public static var BEDROCK(get, null) : Block;
	static function get_BEDROCK() { if (BEDROCK != null) return BEDROCK; return BEDROCK = BlockRegistry.get("bedrock"); }
	
	/// Water - Blue swimmable stuff, strangely not drinkable
	public static var WATER(get, null) : Block;
	static function get_WATER() { if (WATER != null) return WATER; return WATER = BlockRegistry.get("water"); }
	
	/// Flowing Water - Blue swimmable stuff that is flowing in a direction
	public static var FLOWING_WATER(get, null) : Block;
	static function get_FLOWING_WATER() { if (FLOWING_WATER != null) return FLOWING_WATER; return FLOWING_WATER = BlockRegistry.get("flowing_water"); }
	
	/**
	 * Missing block - If you see this block I messed up somewhere (or you have some sort of
	 * mod on the server)
	 */
	public static var MISSING_BLOCK(get, null) : Block;
	static function get_MISSING_BLOCK() { if (MISSING_BLOCK != null) return MISSING_BLOCK; return MISSING_BLOCK = BlockRegistry.get("thinkmap:missing_block"); }
	
	/// Null Block - Solid air
	public static var NULL_BLOCK(get, null) : Block;
	static function get_NULL_BLOCK() { if (NULL_BLOCK != null) return NULL_BLOCK; return NULL_BLOCK = BlockRegistry.get("thinkmap:null"); }
}
