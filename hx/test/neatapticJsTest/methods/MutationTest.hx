package neatapticJsTest.methods;

import neatapticJs.NeatapticJs;

var mutation = NeatapticJs.methods.mutation;

class MutationTest {

	public static function testAddNode() {
		Assert.eq( mutation.ADD_NODE.name, 'ADD_NODE' );
	}

	public static function testAllCount() {
		Assert.eq( mutation.ALL.length, 14 );
	}

	public static function main() {
		testAddNode();
		testAllCount();
		trace( "MutationTest success!" );
	}
}
