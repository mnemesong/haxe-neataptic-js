package neatapticJsTest.methods;

import neatapticJs.methods.Methods;

var gating = Methods.gating;

class GatingTest {

	public static function testOutput() {
		Assert.eq( gating.OUTPUT.name, 'OUTPUT' );
	}

	public static function testSelf() {
		Assert.eq( gating.SELF.name, 'SELF' );
	}

	public static function main() {
		testOutput();
		testSelf();
		trace( "GatingTest success!" );
	}
}
