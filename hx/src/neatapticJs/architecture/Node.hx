package neatapticJs.architecture;

import neatapticJs.methods.Activation.ActivationFunc;

extern class NodeConnections {}

abstract UseNodeConnections( NodeConnections ) from NodeConnections {

	public function new( nc : NodeConnections ) {
		this = nc;
	}

	public function getIn() : Array<Connection> {
		return js.Syntax.code( "this.in" );
	}

	public function getOut() : Array<Connection> {
		return js.Syntax.code( "this.out" );
	}

	public function getGated() : Array<Connection> {
		return js.Syntax.code( "this.gated" );
	}

	public function getSelf() : Array<Connection> {
		return js.Syntax.code( "this.self" );
	}
}

interface NodeState {
	public var bias : Float;

	public var squash : ActivationFunc;

	public var type : String;

	public var activation : Float;

	public var state : Float;

	public var old : Float;

	public var connections : NodeConnections;
}

@:jsRequire( 'neataptic', 'Node' )
extern class Node implements NodeState {

	public function new( ... data : Int );

	public var bias : Float;

	public var squash : ActivationFunc;

	public var type : String;

	public var activation : Float;

	public var state : Float;

	public var old : Float;

	public var connections : NodeConnections;

	public function activate() : Float;

	public function noTraceActivate() : Float;

	public function propagate(
		learningRate : Float,
		momentum : Float,
		update : Bool,
		?target : Float
	) : Void;

	public function connect( node : Node ) : NodeConnections;

	public function disconnect( node : Node ) : Void;

	public function gate( connections : NodeConnections ) : Void;

	public function ungate( connections : NodeConnections ) : Void;

	public function isProjectingTo( node : Node ) : Bool;

	public function isProjectedBy( node : Node ) : Bool;

	public function toJSON() : Dynamic<Any>;

	public function clear() : Void;
}
