#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "Utils.h"


using namespace raytoast;



static value raytoast_sample_method (value inputValue) {
	
	int returnValue = SampleMethod(val_int(inputValue));
	return alloc_int(returnValue);
	
}
DEFINE_PRIM (raytoast_sample_method, 1);



extern "C" void raytoast_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (raytoast_main);



extern "C" int raytoast_register_prims () { return 0; }