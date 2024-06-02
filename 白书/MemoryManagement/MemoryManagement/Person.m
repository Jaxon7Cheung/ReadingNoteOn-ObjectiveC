//
//  Person.m
//  MemoryManagement
//
//  Created by 张旭洋 on 2024/6/2.
//

#import "Person.h"

@implementation Person

- (void)dealloc {
    NSLog(@"Person 对象被释放");
}

@end
