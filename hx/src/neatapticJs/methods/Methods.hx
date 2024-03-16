package neatapticJs.methods;

import neatapticJs.methods.Connection;
import neatapticJs.methods.Gating;
import neatapticJs.methods.Cost;
import neatapticJs.methods.Crossover;
import neatapticJs.methods.Selection;
import neatapticJs.methods.Mutation;

@:jsRequire( 'neataptic', 'methods' )
extern class Methods {

	public static var activation : Activation;
	public static var mutation : Mutation;
	public static var selection : Selection;
	public static var crossover : Crossover;
	public static var cost : Cost;
	public static var gating : Gating;
	public static var connection : Connection;
	public static var rate : Rate;
}
