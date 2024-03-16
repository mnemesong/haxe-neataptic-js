package neatapticJsTest;

import haxe.Exception;

class Assert {
	public static function eq<T>(v1:T, v2:T):Void {
		if (v1 != v2) {
			throw new Exception("Values not equal");
		}
	}

	public static function ok(expr:Bool):Void {
		if (!expr) {
			throw new Exception("Expression is falsy");
		}
	}

	public static function like(v1:Float, v2:Float):Void {
		if (Math.abs(v1 - v2) > 0.05) {
			throw new Exception("Values are not like");
		}
	}
}
