//
//  NSString+EOCMyAdditions.m
//  OC2.0
//
//  Created by 张旭洋 on 2024/5/5.
//

#import "NSString+EOCMyAdditions.h"

@implementation NSString (EOCMyAdditions)

- (nonnull NSString *)eoc_myLowercaseString {
    //看似会进入调用死循环，实际交换后已经是lowercaseString方法了
    NSString* lowerCase = [self eoc_myLowercaseString];
    NSLog(@"%@ => %@", self, lowerCase);
    return lowerCase;
}

@end
