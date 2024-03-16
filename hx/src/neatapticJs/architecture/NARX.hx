package neatapticJs.architecture;

@:jsRequire( 'neataptic', 'architect.NARX' )
extern class NARX extends Network {

	public function new(
		inputSize : Float,
		hiddingLayers : Float,
		outputSize : Float,
		previousInput : Float,
		previousOutput : Float
	);
}
