//
//  Test.m
//  MemoryManagement
//
//  Created by 张旭洋 on 2024/5/26.
//

#import "Test.h"

@implementation Test

- (instancetype)init {
    self = [super init];
    if (self) {
        NSString* str = [self stringValue];
        NSLog(@"The string is: %@", str);
        
//        _instanceVariable = [[self stringValue] retain];
//        // ...
//        [_instanceVariable release];
    }
    return self;
}

- (NSString *)stringValue {
    NSString* str = [[NSString alloc] initWithFormat: @"I am this: %@", self];
    return [str autorelease];
}

- (void)setObject:(id)object {
    [object retain];
    [_object release];
    
    _object = object;
}

@end
