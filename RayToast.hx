package;

import lime.system.JNI;


class RayToast {
	
	public static function testToast():Void{
		testToastJNI();
	}
	private static var testToastJNI = JNI.createStaticMethod("org.haxe.extension.RayToast", "testToast", "()V");

	public static function toastMessage(message:String):Void{
		toast_message_JNI(message);
	}
	private static var toast_message_JNI = JNI.createStaticMethod("org.haxe.extension.RayToast", "toastWithMessage", "(Ljava/lang/String;)V" );

	public static function sendAndGetBackMessage(message:String):String{
		return toast_to_back_message_JNI(message);
	}
	private static var toast_to_back_message_JNI = JNI.createStaticMethod("org.haxe.extension.RayToast", "toastWithMessageBack", "(Ljava/lang/String;)Ljava/lang/String;" );

}