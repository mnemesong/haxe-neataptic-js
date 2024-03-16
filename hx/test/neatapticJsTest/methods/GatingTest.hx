package neatapticJsTest.methods;

import neatapticJs.NeatapticJs;

var gating = NeatapticJs.methods.gating;

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
