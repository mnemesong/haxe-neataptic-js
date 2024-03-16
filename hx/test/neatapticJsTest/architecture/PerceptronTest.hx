package neatapticJsTest.architecture;

import neatapticJs.architecture.Network;
import neatapticJs.architecture.Perceptron;
import haxe.Json;

class PerceptronTest {

	public static function test1() {
		var perc = new Perceptron( 3, 2, 1 );
		var str = Json.stringify( perc.toJSON() );
		Assert.ok( str.indexOf( "nodes" ) != -1 );
		Assert.ok( str.indexOf( "connections" ) != -1 );
		var parsed = Network.fromJSON( Json.parse( str ) );
		parsed.noTraceActivate( [2, 2, 2] );
		var str = Json.stringify( perc.toJSON() );
		Assert.ok( str.indexOf( "nodes" ) != -1 );
		Assert.ok( str.indexOf( "connections" ) != -1 );
		trace( str );
	}

	public static function main() {
		test1();
		trace( "PerceptronTest success!" );
	}
}
