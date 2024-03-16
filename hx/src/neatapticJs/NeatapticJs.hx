package neatapticJs;

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

	public static function newConnection(
		from : Node,
		to : Node,
		weight : Float
	) : Connection {
		return new Connection( from, to, weight );
	}
}
