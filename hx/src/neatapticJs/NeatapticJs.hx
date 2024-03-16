package neatapticJs;

import neatapticJs.architecture.Group;
import neatapticJs.architecture.Network;
import neatapticJs.architecture.Architect.Archictect;
import neatapticJs.architecture.Node;
import neatapticJs.architecture.Connection;
import neatapticJs.methods.Methods;

class NeatapticJs {

	public static var methods = {
		activation : Methods.activation,
		mutation : Methods.mutation,
		selection : Methods.selection,
		crossover : Methods.crossover,
		cost : Methods.cost,
		gating : Methods.gating,
		connection : Methods.connection,
		rate : Methods.rate,
	}

	public static function Connection(
		from : Node,
		to : Node,
		weight : Float
	) : Connection {
		return new Connection( from, to, weight );
	}

	public static var architect = {
		Construct : Archictect.Construct,
		Network : Archictect.Network,
		Connection : Archictect.Connection,
		Node : Archictect.Node,
		Group : Archictect.Group,
		GRU : Archictect.GRU,
		LSTM : Archictect.LSTM,
		NARX : Archictect.NARX,
		Perceptron : Archictect.Perceptron,
		Random : Archictect.Random,
	};

	public static function Network( input : Int, output : Int ) {
		return new Network( input, output );
	}

	public static function config() {
		return Config;
	}

	public static function Group( cnt : Int ) {
		return new Group( cnt );
	}

	public static function Node( data : Array<Int> ) {
		return new Node( ... data );
	}
}
