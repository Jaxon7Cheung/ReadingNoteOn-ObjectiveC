//
//  main.m
//  MemoryManagement
//
//  Created by 张旭洋 on 2024/5/26.
//

#import <Foundation/Foundation.h>
#import "Test.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSObject* obj1 = [[NSObject alloc] init];  //1
//        [obj1 retain];
//        NSLog(@"obj1 当前引用计数：%lu",(unsigned long)[obj1 retainCount]);
//        NSObject* obj2 = [obj1 retain];
//        NSLog(@"obj1 当前引用计数：%lu",(unsigned long)[obj1 retainCount]);
//        [obj2 release];
//        NSLog(@"obj1 当前引用计数：%lu",(unsigned long)[obj1 retainCount]);
//        [obj1 release];
        
//        NSMutableArray* array = [[NSMutableArray alloc] init];
//        NSNumber* number = [[NSNumber alloc] initWithInt: 1337];
//        [array addObject: number];  //number retain
//        [number release];
//        NSLog(@"%lu", (unsigned long)[array retainCount]);
//        [array release];
//        
//        Test* test = [[Test alloc] init];
//        
//        NSString* string = [[NSString alloc] init];
        // [string release];
        
        Person* person1 = [[Person alloc] init];
//        [person1 release];
        Person* person2 = [[Person alloc] init];
        person1.friends = person2;
        person2.friends = person1;
        
    }
    return 0;
}


