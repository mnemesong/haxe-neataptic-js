package neatapticJsTest.methods;

import neatapticJs.NeatapticJs;

var selection = NeatapticJs.methods.selection;

class SelectionTest {

	public static function testPower() {
		Assert.eq( selection.POWER.name, 'POWER' );
	}

	public static function testTournament() {
		Assert.eq( selection.TOURNAMENT.name, 'TOURNAMENT' );
	}

	public static function main() {
		testPower();
		testTournament();
		trace( "SelectionTest success!" );
	}
}
