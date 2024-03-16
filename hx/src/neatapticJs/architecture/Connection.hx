package neatapticJs.architecture;

@:jsRequire( 'neataptic', 'Connection' )
extern class Connection {

	public function new( from : Node, to : Node, weight : Float );

	var from : Node;

	var to : Node;

	var weight : Float;

	var gater : Null<Node>;

	var gain : Float;

	function toJSON() : String;

	function innovationID( a : Float, b : Float ) : Float;
}
