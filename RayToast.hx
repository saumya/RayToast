package;

import lime.system.JNI;


class RayToast {
	
	public static function testToast():Void{
		testToastJNI();
	}
	private static var testToastJNI = JNI.createStaticMethod("org.haxe.extension.RayToast", "testToast", "()V");

	public static function toastMessage(message:String):Void{
		toast_message_JNI(32);
	}
	private static var toast_message_JNI = JNI.createStaticMethod("org.haxe.extension.RayToast", "toastWithMessage", "(I)V");

}