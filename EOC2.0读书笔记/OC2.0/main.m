//
//  main.m
//  OC2.0
//
//  Created by 张旭洋 on 2024/2/15.
//

#import <Foundation/Foundation.h>
#import "EOCPerson.h"
#import "EOCSmithPerson.h"
#import "EOCEmployee.h"
#import <stdio.h>
#import "EOCAutoDictionary.h"

#import "Person.h"
#import "Person+Test.h"

#import "NSString+EOCMyAdditions.h"
#import <objc/runtime.h>

#import "EOCRectangle.h"
#import "ErrorClass.h"

#include <stdlib.h>

//    unsigned char c : 6;
//};

//enum EOCConnectionState {
//    EOCConnectionStateDisconnected,
//    EOCConnectionStateConnecting,
//    EOCConnectionStateConnected,
//};
//声明变量
//enum EOCConnectionState state = EOCConnectionStateConnecting;

//定义一个枚举类型别名
//typedef enum EOCConnectionState EOCConnectionState;
//EOCConnectionState state1 = EOCConnectionStateConnecting;

//typedef enum UIViewAutoresizing {
//    UIViewAutoresizingNone                 = 0,
//    UIViewAutoresizingFlexibleLeftMargin   = 1 << 0,
//    UIViewAutoresizingFlexibleWidth        = 1 << 1,
//    UIViewAutoresizingFlexibleRightMargin  = 1 << 2,
//    UIViewAutoresizingFlexibleTopMargin    = 1 << 3,
//    UIViewAutoresizingFlexibleHeight       = 1 << 4,
//    UIViewAutoresizingFlexibleBottomMargin = 1 << 5
//} UIViewAutoresizing;
//
//enum EOCConnectionState : NSInteger;
//enum EOCConnectionState state;

typedef NS_ENUM(NSUInteger, EOCConnectionState) {
    EOCConnectionStateDisconnected,
    EOCConnectionStateConnecting,
    EOCConnectionStateConnected,
};

//typedef enum EOCConnectionState : NSUInteger {
//    EOCConnectionStateDisconnected,
//    EOCConnectionStateConnecting,
//    EOCConnectionStateConnected,
//};

//typedef NS_OPTIONS(NSUInteger, EOCPermittedDirection) {
//    EOCPermittedDirectionUp = 1 << 0,
//    EOCPermittedDirectionDown = 1 << 1,
//    EOCPermittedDirectionLeft = 1 << 2,
//    EOCPermittedDirectionRight = 1 << 3
//};

//typedef enum EOCPermittedDirection : NSUInteger EOCPermittedDirection;
//enum EOCPermittedDirection : NSUInteger {
//    EOCPermittedDirectionUp = 1 << 0,
//    EOCPermittedDirectionDown = 1 << 1,
//    EOCPermittedDirectionLeft = 1 << 2,
//    EOCPermittedDirectionRight = 1 << 3
//};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        EOCPermittedDirection permittedDirections = EOCPermittedDirectionLeft | EOCPermittedDirectionRight;
//        UIViewAutoresizing resizing = UIViewAutoresizingFlexibleWidth
//        | UIViewAutoresizingFlexibleHeight;
//
//        if (resizing & UIViewAutoresizingFlexibleWidth) {
//            // ...
//        }
        
        // insert code here...
//        NSLog(@"Hello, World!");
        
//        NSString* string = [[NSMutableArray alloc] init];
//        [string stringByAppendingString: @"abc"];
//        [string addObject: @"abc"];
        
//        NSString theString;
        
//        NSString* someString = @"The String";
//        NSString* anotherString = @"The String";
//        NSLog(@"%p %p", someString, anotherString);
        
//        NSString* someString = @"Effective Objective-C 2.0";
//        
////        NSNumber* someNumber = [NSNumber numberWithInt: 1];
//        NSNumber* someNumber = @1;  //只包含数值，没有多余的语法成分
//        
////        NSArray* animals = [NSArray arrayWithObjects: @"cat", @"dog", @"mouse", @"badger", nil];
////        NSString* dog = [animals objectAtIndex: 1];
//        NSArray* animals = @[@"cat", @"dog", @"mouse", @"badger"];
//        NSString* dog = animals[1];  //“取下标” 操作更为简洁，更易理解，与其他语言语法类似
//        
////        NSDictionary* personData = [NSDictionary dictionaryWithObjectsAndKeys: @"Matt", @"firstName", @"Galloway", @"lastName", [NSNumber numberWithInt: 28], @"age", nil];
////        NSString* lastName = [personData objectForKey: @"lastName"];
//        NSDictionary* personData = @{@"firstName" : @"Matt", @"lastName" : @"Galloway", @"age" : @28};// <key> : <Value>，比使用方法创建的写法 <Value>, <key> 更易读
//        NSString* lastName = personData[@"lastName"];
//            
//        NSMutableArray* mutableArray = animals.mutableCopy;
//        NSMutableDictionary* mutableDictionary = personData.mutableCopy;
////        [mutableArray replaceObjectAtIndex: 1 withObject: @"dog"];
////        [mutableDictionary setObject: @"Galloway" forKey: @"lastName"];
//        mutableArray[1] = @"dogee"; // 对于可变数组或字典，可以通过下标修改其中的元素值
//        mutableDictionary[@"lastName"] = @"Gallowayee";
        
        
//        id object1 = [[NSObject alloc] init];
//        id object2 = nil;
//        id object3 = [[NSObject alloc] init];
//        NSArray* arrayA = [[NSArray alloc] initWithObjects: object1, object2, object3, nil];
//        [arrayA release];
//        NSArray* arrayA = [NSArray arrayWithObjects: object1, object2, object3, nil];
//        NSLog(@"%ld", [arrayA count]);
//        
//        NSMutableArray* mutableArray = arrayA.mutableCopy;
//        [mutableArray addObject: nil];
        
//        NSArray* arrayB = @[object1, object2, object3];
        
//        NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys: @"Matt", @"firstName", nil, @"lastName", [NSNumber numberWithInt: 28], @"age", nil];
//        NSDictionary* personData = @{@"firstName" : nil, nil : @"Galloway", @"age" : @28};
        
//        NSMutableArray* mutableArray = [@[@1, @2, @3] mutableCopy];
        NSMutableArray* mutableArray = @[@1, @2, @3].mutableCopy;
//        NSUInteger ni;
//        enum EOCConnectionState state = 0;
        
//        switch (_currentState) {
//            EOCConnectionStateDisconnected:
//                // Handle disconnected state
//                break;
//            EOCConnectionStateConnecting:
//                // Handle connecting state
//                break;
//            EOCConnectionStateConnected:
//                // Handle connected state
//                break;
//        }
        
        EOCPerson* aPerson = [EOCPerson new];
        
        aPerson.firstName = @"Jacky";  // Same as
        aPerson.lastName = @"Wan";
        [aPerson setFirstName: @"Jacky"];
//
//        aPerson->_firstName = @"Bob";
        
//        NSString* lastName = aPerson.lastName;  // Same as
//        NSString* lastName = [aPerson lastName];
        
//        NSString* foo = @"123";
//        NSString* foo = @"Badger 123";
//        NSString* bar = [NSString stringWithFormat: @"Badger %i", 123];
//        NSMutableString* barr = [NSMutableString stringWithFormat: @"Badger %i", 123];
//        BOOL a;
//        
//        BOOL equalA = (foo == bar);  //NO
//        BOOL equalB = [foo isEqual: bar];  //YES
//        BOOL equalC = [foo isEqualToString: bar];  //YES
//        
//        NSLog(@"%d", [foo isEqualToString: @123]);
//        NSLog(@"%d", [foo isEqual: @123]);
//        NSLog(@"%@ %@", [bar class], [barr class]);
        
//        EOCPerson* person = [[EOCPerson alloc] init];
//        EOCSmithPerson* smithPerson = [[EOCSmithPerson alloc] init];
//        NSLog(@"%d", person == smithPerson);
//        NSLog(@"%d", person == (EOCPerson *)smithPerson);
        
//        NSMutableSet* set = [NSMutableSet new];
//        
//        NSMutableArray* arrayA = [@[@1, @2] mutableCopy];
//        [set addObject: arrayA];
//        NSLog(@"set = %@", set);  //set = {((1, 2))}
//        
//        NSMutableArray* arrayB = [@[@1, @2] mutableCopy];;
//        [set addObject: arrayB];
//        NSLog(@"set = %@", set);  //set = {((1, 2))}
//        //待加入数组对象和set中已有的数组对象相等，所以set不会改变
//        
//        NSMutableArray* arrayC = [@[@1] mutableCopy];
//        [set addObject: arrayC];
//        NSLog(@"set = %@", set);  //set = {((1), (1, 2))}
//        
//        [arrayC addObject: @2];
//        NSLog(@"set = %@", set);  //set = {((1, 2), (1, 2))}
//        //改变arrayC的内容，令其和最早加入set的那个数组相等
//        /*
//         set中居然可以包含两个彼此相等的数组，根据set的语义是不允许出现这种情况的
//         然而现在却无法保证这一点了，因为我们修改了set中已有的对象
//         */
//        
//        //若是拷贝此set，就更糟了
//        NSSet* setB = [set copy];
//        NSLog(@"setB = %@", setB);  // set = {((1, 2))};
        
//        EOCEmployee* employeeB = [EOCEmployee employeeWithType: EOCEmployeeTypeFinance];
//        [employeeB doADaysWork];
//        
//        EOCEmployee* employee = [EOCEmployee employeeWithType: EOCEmployeeTypeDeveloper];
//        [employee doADaysWork];
        
//        NSLog(@"%@", NSStringFromSelector(@selector(dateByAddingTimeInterval:)));    //dateByAddingTimeInterval:

//        NSMutableString* key = [NSMutableString stringWithString: @"setOpaqueString:"];
//        //删除:
//        [key deleteCharactersInRange: NSMakeRange(key.length - 1, 1)];
//        NSLog(@"%@", key);
//        //删除set
//        [key deleteCharactersInRange: NSMakeRange(0, 3)];
//        NSLog(@"%@", key);
//        //将首字母变成小写
//        NSString* lowercaseFirstChar = [[key substringToIndex: 1] lowercaseString];
//        NSLog(@"%@", lowercaseFirstChar);
//        [key replaceCharactersInRange: NSMakeRange(0, 1) withString: lowercaseFirstChar];
//        NSLog(@"%@", key);
        
        EOCAutoDictionary* dict = [EOCAutoDictionary new];
        dict.string = @"Dynamic Method Resolution";
        dict.date = [NSDate dateWithTimeIntervalSince1970: 475372800];
        dict.number = [NSNumber numberWithInt: 7];
        dict.opaqueObject = @"zxbhjSFc";
        NSLog(@"%@\n%@\n%@ %@", dict.string, dict.date, dict.number, dict.opaqueObject);
        
//        NSInvocation* invocation
//        NSLog(@"%@", [dict.opaqueObject capitalizedString]);
        Method originalMethod = class_getInstanceMethod([NSString class], @selector(eoc_myLowercaseString));
        Method swappedMethod = class_getInstanceMethod([NSString class], @selector(lowercaseString));
        method_exchangeImplementations(originalMethod, swappedMethod);
        NSString* exchangeString = [dict.opaqueObject lowercaseString];
//        NSLog(@"%@", exchangeString);
        
//        id aString = @"aStringa";
//        [aString numberWithInt: 7];
//        NSString* bString = @"bStringb";
//        [bString numberWithInt: 7];
        NSObject* obj = [[NSObject alloc] init];
        
        BOOL bool1 = [[EOCAutoDictionary class] isKindOfClass: [EOCAutoDictionary class]];//+
        BOOL bool_1 = [[NSObject class] isKindOfClass: [NSObject class]];
        BOOL boolone = [EOCAutoDictionary isKindOfClass: [EOCAutoDictionary class]];//+
        BOOL bool_one = [NSObject isKindOfClass: [NSObject class]];
        
        BOOL bool2 = [dict isKindOfClass: [EOCAutoDictionary class]]; // 1
        BOOL bool_2 = [dict isKindOfClass: [NSObject class]]; // 1
        
        //看传入的class是不是调用者所指向的isa（元类，因此都返回false）
        BOOL bool3 = [[EOCAutoDictionary class] isMemberOfClass: [EOCAutoDictionary class]];
        BOOL bool_3 = [[NSObject class] isMemberOfClass: [NSObject class]];
        BOOL boolthree = [EOCAutoDictionary isMemberOfClass: [EOCAutoDictionary class]];
        BOOL bool_three = [NSObject isMemberOfClass: [NSObject class]];
        
        BOOL bool4 = [dict isMemberOfClass: [EOCAutoDictionary class]]; // 1
        BOOL bool_4 = [dict isMemberOfClass: [NSObject class]]; // 0
        
        NSLog(@"Kind:\n类调用：%d %d %d %d\n实例调用：%d %d\nMember:\n类调用：%d %d %d %d\n实例调用：%d %d", bool1, bool_1, boolone, bool_one, bool2, bool_2, bool3, bool_3, boolthree, bool_three, bool4, bool_4);
        
//        NSProxy* proxy
        
        //关联对象给分类添加
//        Person* person = [[Person alloc] init];
//        [person testOnPerson];
        
//        EOCRectangle* rectangle = [EOCRectangle new];
        
        NSArray* object = @[@"A String", @(123)];
        NSLog(@"%@", object);
        
//        NSError* error
//        NSURLConnection* connection
        ErrorClass* errorObject = [[ErrorClass alloc] init];
        NSError* error = nil;
        BOOL ret = [errorObject doSomething: nil];
        if (ret) {
            // There was an error
        }
//        NSMethodSignature* signature
        
        //赋值
        struct bs {
            unsigned m;
            unsigned int n : 5;
            unsigned char ch : 6;
        } data = {0xad, 0xe, '$'};
        
        //第一次输出
        printf("%#x, %#x, %c = %d\n", data.m, data.n, data.ch, data.ch);
        //以十六进制数出一个整型
        
        //更改值后第一次输出
        data.m = 0xb8901c;
        data.n = 0x2d;
        data.ch = 'z';
        printf("%#x, %#x, %c\n", data.m, data.n, data.ch);
        
        printf("%d %c\n", 0x2d - 0xd, 58);
        
        printf("%lu\n", sizeof(struct bs));  //8 //变回结构体的话是12
        
        struct bss {
            unsigned m : 12;
            unsigned char ch : 4;
            unsigned p : 4;
        };
        printf("%lu\n", sizeof(struct bss));
        
//        NSMutableDictionary* mutableDict
    }
    

    return 0;
}


//void printHello(void) {
//    printf("Hello, world!\n");
//}
//
//void printGoodbye(void) {
//    printf("Goodbye, world!\n");
//}
//
//void doTheThings(int type) {
//    void (*func) (void);
//    if (type == 0) {
//        func = printHello;
//    } else {
//        func = printGoodbye;
//    }
//    func();
//}

//void objc_msgSend(id self, SEL cmd, ...);

