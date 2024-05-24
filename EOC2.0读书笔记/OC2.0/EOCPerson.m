//
//  EOCPerson.m
//  OC2.0
//
//  Created by 张旭洋 on 2024/5/7.
//

#import "EOCPerson.h"

@interface EOCPerson() {
    NSString* _instanceVariable;
}

@end

@implementation EOCPerson {
    int _anotherInstanceVariable;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, \"%@ %@\">", [self class], self, _firstName, _lastName];
}

@end
