package neatapticJs.architecture;

import neatapticJs.architecture.Node.NodeState;
import neatapticJs.methods.Gating;
import neatapticJs.architecture.Node.NodeConnections;

@:jsRequire( 'neataptic', 'architect.Group' )
extern class Group {

	public function new( cnt : Int );

	public var nodes : Array<Node>;

	public var connectins : NodeConnections;

	public function activate( vals : Array<Float> ) : Void;

	public function propagate( rate : Float, momentum : Float, target : Array<Float> ) : Void;

	public function connect( g : Group, con : neatapticJs.methods.Connection ) : Void;

	public function gate( c : NodeConnections, g : Gating ) : Void;

	public function set( ns : NodeState ) : Void;

	public function disconnect( n : Node, bothSides : Bool ) : Void;

	public function clear() : Void;
}
