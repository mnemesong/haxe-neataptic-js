package neatapticJsTest.methods;

import neatapticJs.methods.Methods;

var crossover = Methods.crossover;

class CrossoverTest {

	public static function testSinglePoint() {
		Assert.eq( crossover.SINGLE_POINT.name, 'SINGLE_POINT' );
	}

	public static function testTournament() {
		Assert.eq( crossover.UNIFORM.name, 'UNIFORM' );
	}

	public static function main() {
		testSinglePoint();
		testTournament();
		trace( "CrossoverTest success!" );
	}
}
