package neatapticJs.methods;

interface IConnection {
	public var name : String;
}

typedef Connection = {
	var ALL_TO_ALL : IConnection;
	var ALL_TO_ELSE : IConnection;
	var ONE_TO_ONE : IConnection;
}
