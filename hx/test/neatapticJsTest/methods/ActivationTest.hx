package neatapticJsTest.methods;

import neatapticJs.NeatapticJs;
import neatapticJs.methods.Activation;

class ActivationTest {
	public static function testLogistic() {
		var activation = NeatapticJs.methods.activation;
		Assert.like(activation.LOGISTIC(-5), 0);
		Assert.like(activation.LOGISTIC(5), 1);
		Assert.like(activation.LOGISTIC(-5, true), 0);
		Assert.like(activation.LOGISTIC(-5, true), 0);
	}

	public static function testIdentity() {
		var activation = NeatapticJs.methods.activation;
		Assert.like(activation.IDENTITY(-5), -5);
		Assert.like(activation.IDENTITY(5), 5);
		Assert.like(activation.IDENTITY(-5, true), 1);
		Assert.like(activation.IDENTITY(-5, true), 1);
	}

	public static function main() {
		testLogistic();
		testIdentity();
		trace("ActivationTest success!");
	}
}
