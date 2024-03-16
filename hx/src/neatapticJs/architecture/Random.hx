package neatapticJs.architecture;

@:jsRequire( 'neataptic', 'architect.Random' )
extern class Random extends Network {

	public function new( input : Int, hidden : Int, output : Int );
}
