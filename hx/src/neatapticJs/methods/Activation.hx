package neatapticJs.methods;

typedef ActivationFunc = ( x : Float, ?der : Bool ) -> Float;

typedef Activation = {
	var LOGISTIC : ActivationFunc;
	var TANH : ActivationFunc;
	var IDENTITY : ActivationFunc;
	var STEP : ActivationFunc;
	var RELU : ActivationFunc;
	var SOFTSIGN : ActivationFunc;
	var SINUSOID : ActivationFunc;
	var GAUSSIAN : ActivationFunc;
	var BENT_IDENTITY : ActivationFunc;
	var BIPOLAR : ActivationFunc;
	var BIPOLAR_SIGMOID : ActivationFunc;
	var HARD_TAHN : ActivationFunc;
	var ABSOLUTE : ActivationFunc;
	var INVERSE : ActivationFunc;
	var SELU : ActivationFunc;
}
