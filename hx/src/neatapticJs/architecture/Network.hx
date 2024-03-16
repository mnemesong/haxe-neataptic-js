package neatapticJs.architecture;

import neatapticJs.architecture.Node.NodeState;
import js.lib.Float64Array;
import neatapticJs.methods.Mutation;
import neatapticJs.architecture.Node.NodeConnections;

@:jsRequire( 'neataptic', 'Network' )
extern class Network {

	public function new( input : Int, output : Int );

	public var input : Int;

	public var output : Int;

	public var nodes : Array<Node>;

	public var connections : Array<Connection>;

	public var gates : Array<Connection>;

	public var selfcons : Array<Connection>;

	public function activate() : Float;

	public function noTraceActivate() : Float;

	public function propagate(
		learningRate : Float,
		momentum : Float,
		update : Bool,
		?target : Float
	) : Void;

	public static function merge( n1 : Network, n2 : Network ) : Network;

	public function connect( from : Node, to : Node, weight : Float ) : NodeConnections;

	public function remove( n : Node ) : Void;

	public function disconnect( from : Node, to : Node ) : Void;

	public function gate( n : Node, c : Connection ) : Void;

	public function ungate( c : Connection ) : Void;

	public function mutate( m : Mutation ) : Void;

	public function serialize() : Array<Float64Array>;

	public function toJSON() : Dynamic<Any>;

	public static function fromJSON( json : Dynamic<Any> ) : Network;

	public function standalone() : String;

	public static function crossOver( n1 : Network, n2 : Network ) : Network;

	public function set( ns : NodeState ) : Void;

	public function clear() : Void;
}
