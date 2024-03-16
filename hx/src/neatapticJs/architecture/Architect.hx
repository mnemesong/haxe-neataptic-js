package neatapticJs.architecture;

@:jsRequire( 'neataptic', 'achitect' )
extern class Architect {

	public static function Construct( nodes : Array<Node> ) : Network;
}
