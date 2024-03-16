package neatapticJs.methods;

import neatapticJs.methods.Connection;
import neatapticJs.methods.Gating;
import neatapticJs.methods.Cost;
import neatapticJs.methods.Crossover;
import neatapticJs.methods.Selection;
import neatapticJs.methods.Mutation;

typedef Methods = {
	var activation : Activation;
	var mutation : Mutation;
	var selection : Selection;
	var crossover : Crossover;
	var cost : Cost;
	var gating : Gating;
	var connection : Connection;
	var rate : Rate;
}
