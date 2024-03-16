package neatapticJs.architecture;

import js.lib.Promise;
import neatapticJs.architecture.Node.NodeState;
import js.lib.Float64Array;
import neatapticJs.methods.Mutation;
import neatapticJs.architecture.Node.NodeConnections;

typedef TrainingData = {
	input : Array<Float>,
	output : Array<Float>,
}

typedef TrainingOptions = {
	?log : Null<Int>,
	?error : Null<Float>,
	?iterations : Null<Int>,
	?rate : Null<Float>,
}

typedef EvolveOption = {
	?mutation : Null<Mutation>,
	?equal : Null<Bool>,
	?popsize : Null<Int>,
	?elitismn : Null<Int>,
	?log : Null<Int>,
	error : Null<Float>,
	?iterations : Null<Int>,
	mutationRate : Null<Float>,
}

@:jsRequire( 'neataptic', 'Network' )
extern class Network {

	public function new( input : Int, output : Int );

	public var input : Int;

	public var output : Int;

	public var nodes : Array<Node>;

	public var connections : Array<Connection>;

	public var gates : Array<Connection>;

	public var selfcons : Array<Connection>;

	public function activate( data : Array<Float> ) : Array<Float>;

	public function noTraceActivate( data : Array<Float> ) : Array<Float>;

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

	public function train( data : Array<TrainingData>, ?opts : TrainingOptions ) : Void;

	public function evolve( data : Array<TrainingData>, ?opts : EvolveOption ) : Promise<Void>;
}
