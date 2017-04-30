package;

import lime.system.JNI;


class RayToast {
	
	public static function testToast():Void{
		testToastJNI();
	}
	private static var testToastJNI = JNI.createStaticMethod("org.haxe.extension.RayToast", "testToast", "()V");

}