# haxe-neataptic-js
Haxe externs for neataptic.js library for evaluating and training custom neural networks


## Installation
1. install library from haxelib `haxelib install haxe-neataptic-js`
2. init node package config and install neataptic from npm `npm i neataptic`


## Neataptic
This package api maximal like native `neatapric` api.
Full neataptic native usage documentation on [Neatapric website](https://wagenaartje.github.io/neataptic/docs/tutorials/training/)


## Example of usage 1
init, stringify and parsing of percepron
```haxe
import neatapticJs.architecture.Network;
import neatapticJs.architecture.Perceptron;
import haxe.Json;
...
//init, stringify and parsing of percepron
var perc = new Perceptron( 3, 2, 1 );
var str = Json.stringify( perc.toJSON() );
Assert.ok( str.indexOf( "nodes" ) != -1 );
Assert.ok( str.indexOf( "connections" ) != -1 );
var parsed = Network.fromJSON( Json.parse( str ) ); //new Neural Network like primal Perceptron
```


## Example of usage 2
Test perceptrone perception
```haxe
import neatapticJs.architecture.Network;
import neatapticJs.architecture.Perceptron;
import haxe.Json;
//Test perceptrone perception
var perc = new Perceptron( 10, 3, 1 );
var generatePerceptTwoData : () -> TrainingData = () -> {
	var val = Math.floor( Math.random() * 10 );
	return {
		input : [for ( i in 0...10 ) ( ( i == val ) ? 1 : 0 )],
		output : ( val == 2 ) ? [1] : [0]
	}
}
var dataSet = [for ( i in 0...10000 ) generatePerceptTwoData()];
perc.train( dataSet, {
	iterations : 1000,
	rate : 0.1,
} );
Assert.like( perc.activate( [1] )[0], 0 );
```

## Overview of classes
- neatapticJs.Config (extern for config)
- neatapticJs.architecture.Connection 
- neatapticJs.architecture.Construct (extern for architect.Construct)
- neatapticJs.architecture.Group 
- neatapticJs.architecture.Network
- neatapticJs.architecture.Node
- neatapticJs.architecture.GRU
- neatapticJs.architecture.LSTM
- neatapticJs.architecture.NARX
- neatapticJs.architecture.Perceptron
- neatapticJs.architecture.Random
- neatapticJs.methods.Activation
- neatapticJs.methods.Connection
- neatapticJs.methods.Cost
- neatapticJs.methods.Crossover
- neatapticJs.methods.Gating
- neatapticJs.methods.Methods
- neatapticJs.methods.Mutation
- neatapticJs.methods.Rate
- neatapticJs.methods.Selection


## License
MIT


## Author
Anatoly Starodubtsev
tostar74@mail.ru