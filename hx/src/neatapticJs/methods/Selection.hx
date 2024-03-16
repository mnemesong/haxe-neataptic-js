package neatapticJs.methods;

interface ISelection {
	public var name:String;
}

typedef Selection = {
	var FITNESS_PROPORTIONATE:ISelection;
	var POWER:ISelection;
	var TOURNAMENT:ISelection;
}
