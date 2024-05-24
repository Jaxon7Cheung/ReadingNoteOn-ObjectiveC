//
//  EOCAutoDictionary.m
//  OC2.0
//
//  Created by 张旭洋 on 2024/3/14.
//

#import "EOCAutoDictionary.h"
#import <objc/runtime.h>

@interface EOCAutoDictionary ()

@property (nonatomic, strong)NSMutableDictionary* backingStore;

@end

@implementation EOCAutoDictionary

id autoDictionaryGetter(id self, SEL _cmd);
void autoDictionarySetter(id self, SEL _cmd, id value);

@dynamic string, number, date, opaqueObject;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _backingStore = [NSMutableDictionary new];
    }
    return self;
}

//没有了这两个方法的实现之后，才会启用动态方法解析
//- (void)setString:(NSString *)string {
//    NSLog(@"111");
//}
//
//- (NSString *)string {
//    NSLog(@"222");
//    return @"";
//}

// 传入的是被首次访问或写入的属性的setter或getter方法
// 比如要写入opaqueObject属性，那么传入的参数就是 @selector(setOpaqueObject:)
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    //选择子的名称
    NSString* selectorString = NSStringFromSelector(sel);
    
    if ([selectorString hasPrefix: @"set"]) {
        class_addMethod(self, sel, (IMP)autoDictionarySetter, "v@:@");
    } else {
        class_addMethod(self, sel, (IMP)autoDictionaryGetter, "@@:");
    }
    
    return YES;
}

id autoDictionaryGetter(id self, SEL _cmd) {
    //从对象中拿到backingStore
    EOCAutoDictionary* typedSelf = (EOCAutoDictionary *)self;
    NSMutableDictionary* backingStore = typedSelf.backingStore;
    
    //getter方法名作为key
    NSString* key = NSStringFromSelector(_cmd);  //string
    
    return [backingStore objectForKey: key];
}

void autoDictionarySetter(id self, SEL _cmd, id value) {
    EOCAutoDictionary* typedSelf = (EOCAutoDictionary *)self;
    NSMutableDictionary* backingStore = typedSelf.backingStore;
    
    NSString* selectorString = NSStringFromSelector(_cmd);
    NSMutableString* key = [selectorString mutableCopy];  //setString:
    
    //删除:
    [key deleteCharactersInRange: NSMakeRange(key.length - 1, 1)];
    //删除set
    [key deleteCharactersInRange: NSMakeRange(0, 3)];
    //将首字母变成小写
    NSString* lowercaseFirstChar = [[key substringToIndex: 1] lowercaseString];
    [key replaceCharactersInRange: NSMakeRange(0, 1) withString: lowercaseFirstChar];
    
    if (value) {
        [backingStore setObject: value forKey: key];
    } else {
        [backingStore removeObjectForKey: key];
    }
}

@end
