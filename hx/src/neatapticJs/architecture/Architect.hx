package neatapticJs.architecture;

@:jsRequire( 'neataptic', 'architect' )
extern private class PrivateArchitect {

	public static function Construct( nodes : Array<Node> ) : Network;
}

class Archictect {

	public static function Construct( nodes : Array<Node> ) {
		return PrivateArchitect.Construct( nodes );
	}

	public static function Network( input : Int, output : Int ) {
		return new Network( input, output );
	}

	public static function Connection( from : Node, to : Node, weight : Float ) {
		return new Connection( from, to, weight );
	}

	public static function Node( data : Array<Int> ) {
		return new Node( ... data );
	}

	public static function Group( cnt : Int ) {
		return new Group( cnt );
	}

	public static function GRU( nodes : Array<Int> ) {
		return new GRU( ... nodes );
	}

	public static function LSTM( nodes : Array<Int> ) {
		return new LSTM( ... nodes );
	}

	public static function NARX(
		inputSize : Float,
		hiddingLayers : Float,
		outputSize : Float,
		previousInput : Float,
		previousOutput : Float
	) {
		return
			new NARX( inputSize, hiddingLayers, outputSize, previousInput, previousOutput );
	}

	public static function Perceptron( nodes : Array<Int> ) {
		return new Perceptron( ... nodes );
	}

	public static function Random( input : Int, hidden : Int, output : Int ) {
		return new Random( input, hidden, output );
	}
}
