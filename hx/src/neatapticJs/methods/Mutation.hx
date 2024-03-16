package neatapticJs.methods;

interface IMutation {
	public var name:String;
}

typedef Mutation = {
	var ADD_NODE:IMutation;
	var SUB_NODE:IMutation;
	var ADD_CONN:IMutation;
	var SUB_CONN:IMutation;
	var MOD_WEIGHT:IMutation;
	var MOD_BIAS:IMutation;
	var MOD_ACTIVATION:IMutation;
	var ADD_SELF_CONN:IMutation;
	var SUB_SELF_CONN:IMutation;
	var ADD_GATE:IMutation;
	var SUB_GATE:IMutation;
	var ADD_BACK_CONN:IMutation;
	var SUB_BACK_CONN:IMutation;
	var SWAP_NODES:IMutation;
	var ALL:Array<IMutation>;
	var FFW:Array<IMutation>;
}
