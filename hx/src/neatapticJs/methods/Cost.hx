package neatapticJs.methods;

typedef CostFunc = ( target : Array<Float>, output : Array<Float> ) -> Float;

typedef Cost = {
	var CROSS_ENTROPY : CostFunc;
	var MSE : CostFunc;
	var BINARY : CostFunc;
	var MAE : CostFunc;
	var MAPE : CostFunc;
	var MSLE : CostFunc;
	var HINGE : CostFunc;
}
