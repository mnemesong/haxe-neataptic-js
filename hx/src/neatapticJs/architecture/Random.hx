package neatapticJs.architecture;

@:jsRequire( 'neataptic', 'achitect.Random' )
private extern class Random extends Network {

	public function new( input : Int, hidden : Int, output : Int );
}
