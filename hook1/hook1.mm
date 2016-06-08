#import "CaptainHook.h"


CHDeclareClass(ViewController);
//参数个数、返回值类型、类名、selector名称、selector的类型、selector对应的参数的变量名
CHMethod(1, void, ViewController, say, id, arg1)
{
    NSString* tmp=@"Hello, Android!";
    
    CHSuper(1, ViewController, say, tmp);
}


__attribute__((constructor)) static void entry()
{
    NSLog(@"Hello, Ice And Fire!");
    CHLoadLateClass(ViewController);
    CHClassHook(1, ViewController,say);
}
