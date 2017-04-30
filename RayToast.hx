package;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

#if (android && openfl)
import openfl.utils.JNI;
#end


class RayToast {
	
	
	public static function sampleMethod (inputValue:Int):Int {
		
		#if (android && openfl)
		
		var resultJNI = raytoast_sample_method_jni(inputValue);
		var resultNative = raytoast_sample_method(inputValue);
		
		if (resultJNI != resultNative) {
			
			throw "Fuzzy math!";
			
		}
		
		return resultNative;
		
		#else
		
		return raytoast_sample_method(inputValue);
		
		#end
		
	}
	
	
	private static var raytoast_sample_method = Lib.load ("raytoast", "raytoast_sample_method", 1);
	
	#if (android && openfl)
	private static var raytoast_sample_method_jni = JNI.createStaticMethod ("org.haxe.extension.RayToast", "sampleMethod", "(I)I");
	#end
	
	
}