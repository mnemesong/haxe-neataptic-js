package neatapticJsTest.methods;

import neatapticJs.methods.Methods;

var rate = Methods.rate;

class RateTest {

	public static function testFixed() {
		Assert.eq( rate.FIXED()( 5, 12 ), 5 );
	}

	public static function testExp() {
		Assert.eq( rate.EXP( 2 )( 5, 3 ), 40 );
	}

	public static function main() {
		testFixed();
		testExp();
		trace( "RateTest success!" );
	}
}
