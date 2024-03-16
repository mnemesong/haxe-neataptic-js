package neatapticJsTest.methods;

import neatapticJs.NeatapticJs;

var connection = NeatapticJs.methods.connection;

class ConnectionTest {

	public static function testOutput() {
		Assert.eq( connection.ALL_TO_ALL.name, 'OUTPUT' );
	}

	public static function testSelf() {
		Assert.eq( connection.ONE_TO_ONE.name, 'SELF' );
	}

	public static function main() {
		testOutput();
		testSelf();
		trace( "connectionTest success!" );
	}
}
