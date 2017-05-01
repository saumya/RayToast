RayToast
==============

 An [OpenFL][1] Android extension to display Toast Messages. 
 Here is a [reference tutorial][2].

Making an extension
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

The JNI [short code reference][3]





[1]: http://www.openfl.org/learn/docs/tools/
[2]: https://player03.com/2014/08/09/openfl-extensions/
[3]: https://docs.oracle.com/javase/7/docs/technotes/guides/jni/spec/types.html