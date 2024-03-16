package neatapticJsTest.methods;

import neatapticJs.methods.Methods;

var cost = Methods.cost;

class CostTest {

	public static function testMSE() {
		Assert.like(
			cost.MSE( [2, 3], [1, -1] ),
			( Math.pow( 2 - 1, 2 ) + Math.pow( 3 + 1, 2 ) ) / 2
		);
	}

	public static function main() {
		testMSE();
		trace( "CostTest success!" );
	}
}
