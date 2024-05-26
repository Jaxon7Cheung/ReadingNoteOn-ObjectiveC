//
//  Test.m
//  MemoryManagement
//
//  Created by 张旭洋 on 2024/5/26.
//

#import "Test.h"

@implementation Test

- (void)setObject:(id)object {
    [object retain];
    [_object release];
    
    _object = object;
}

@end
