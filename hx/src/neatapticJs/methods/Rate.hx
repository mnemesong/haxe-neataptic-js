package neatapticJs.methods;

typedef RateCalc = ( baseRate : Float, iteration : Int ) -> Float;

typedef Rate = {
	var FIXED : () -> RateCalc;
	var STEP : ( gamma : Float, stepSize : Float ) -> RateCalc;
	var EXP : ( gamma : Float ) -> RateCalc;
	var INV : ( gamma : Float, pow : Float ) -> RateCalc;
}
