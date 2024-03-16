package neatapticJs.methods;

interface ICrossover {
	public var name : String;
}

typedef Crossover = {
	var SINGLE_POINT : ICrossover;
	var TWO_POINT : ICrossover;
	var UNIFORM : ICrossover;
	var AVERAGE : ICrossover;
}
