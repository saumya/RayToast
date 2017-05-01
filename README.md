RayToast
==============

 An [OpenFL][1] Android extension to display Toast Messages. 
 Here is a [reference tutorial][2]. Done with **OpenFL 4.9.2**.

Available Methods
 - `testToast()Void` : Display a toast
 - `toastMessage(message:String):Void` : Display a toast with a message that we provide as an arguement
 - `sendAndGetBackMessage(message:String):String` : Displays a toast with our message and gets a default returned string, just to make sure the return value can be integrated

### Making an extension

 - Create
```
lime create extension MyExtension
```
 - Compile
```
lime rebuild MyExtension android
```
 - Use it by including in project by adding it in project.xml
```
<include path="../../path/to/extensions/MyExtension" />
```

### Using the extension

Simply call the static methods from the OpenFL project.
```
var returnedString:String = RayToast.sendAndGetBackMessage( "Hello from OpenFL : " + Date.now() );
```

### Notes

 - The JNI [short code reference][3]
 - change `build.gradle` to have `classpath 'com.android.tools.build:gradle:::ANDROID_GRADLE_PLUGIN::'`
   - it looks as
   ```
   dependencies {
		classpath 'com.android.tools.build:gradle:::ANDROID_GRADLE_PLUGIN::'
	}
   ``` 






[1]: http://www.openfl.org/learn/docs/tools/
[2]: https://player03.com/2014/08/09/openfl-extensions/
[3]: https://docs.oracle.com/javase/7/docs/technotes/guides/jni/spec/types.html