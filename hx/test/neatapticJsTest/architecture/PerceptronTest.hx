package neatapticJsTest.architecture;

import neatapticJs.architecture.Network;
import neatapticJs.architecture.Perceptron;
import haxe.Json;

class PerceptronTest {

	public static function testSerialization() {
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

	public static function testTrain() {
		var perc = new Perceptron( 10, 3, 1 );
		var genFromVal = ( val : Int ) -> [for ( i in 0...10 )
			( ( i == val ) ? 1.0 : 0.0 )];
		var generatePerceptTwoData : () -> TrainingData = () -> {
			var val = Math.floor( Math.random() * 10 );
			return {
				input : genFromVal( val ),
				output : ( val == 2 ) ? [1] : [0]
			}
		}
		var dataSet = [for ( i in 0...10000 ) generatePerceptTwoData()];
		perc.train( dataSet, {
			iterations : 1000,
			rate : 0.1,
		} );
		Assert.like( perc.activate( genFromVal( 1 ) )[0], 0 );
		Assert.like( perc.activate( genFromVal( 2 ) )[0], 1 );
		Assert.like( perc.activate( genFromVal( 5 ) )[0], 0 );
		trace( "Success" );
	}

	public static function main() {
		testSerialization();
		testTrain();
		trace( "PerceptronTest success!" );
	}
}
