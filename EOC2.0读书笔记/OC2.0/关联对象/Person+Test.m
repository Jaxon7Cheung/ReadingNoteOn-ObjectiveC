//
//  Person+Test.m
//  OC2.0
//
//  Created by 张旭洋 on 2024/4/29.
//

#import "Person+Test.h"
#import "objc/objc-runtime.h"

@implementation Person (Test)

- (void)testOnPerson {
    self.height = 175.4;
    NSLog(@"%d", self.height);
}

- (void)setHeight:(int)height {
    objc_setAssociatedObject(self, @selector(height), [NSNumber numberWithInt: height], OBJC_ASSOCIATION_ASSIGN);
//    objc_setAssociatedObject(<#id  _Nonnull object#>, <#const void * _Nonnull key#>, <#id  _Nullable value#>, objc_AssociationPolicy policy)
}

- (int)height {
    return [objc_getAssociatedObject(self, @selector(height)) intValue];
}

@end
