package neatapticJs.methods;

typedef Activation = {
	function LOGISTIC(x:Float, ?der:Bool):Float;
	function TANH(x:Float, ?der:Bool):Float;
	function IDENTITY(x:Float, ?der:Bool):Float;
	function STEP(x:Float, ?der:Bool):Float;
	function RELU(x:Float, ?der:Bool):Float;
	function SOFTSIGN(x:Float, ?der:Bool):Float;
	function SINUSOID(x:Float, ?der:Bool):Float;
	function GAUSSIAN(x:Float, ?der:Bool):Float;
	function BENT_IDENTITY(x:Float, ?der:Bool):Float;
	function BIPOLAR(x:Float, ?der:Bool):Float;
	function BIPOLAR_SIGMOID(x:Float, ?der:Bool):Float;
	function HARD_TAHN(x:Float, ?der:Bool):Float;
	function ABSOLUTE(x:Float, ?der:Bool):Float;
	function INVERSE(x:Float, ?der:Bool):Float;
	function SELU(x:Float, ?der:Bool):Float;
}
