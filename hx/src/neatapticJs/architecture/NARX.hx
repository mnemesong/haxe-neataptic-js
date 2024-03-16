package neatapticJs.architecture;

@:jsRequire( 'neataptic', 'achitect.NARX' )
private extern class NARX extends Network {

	public function new(
		inputSize : Float,
		hiddingLayers : Float,
		outputSize : Float,
		previousInput : Float,
		previousOutput : Float
	);
}
