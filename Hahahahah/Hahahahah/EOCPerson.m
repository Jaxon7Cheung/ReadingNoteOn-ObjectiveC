//
//  EOCPerson.m
//  Hahahahah
//
//  Created by 张旭洋 on 2024/4/28.
//

#import "EOCPerson.h"

@implementation EOCPerson

- (instancetype)init {
    self = [super init];
    if (self) {
        self->_lastName = @"Jaxon";
        NSLog(@"aaa");
//        self.lastName = @"";
//        [self setLastName: @""];
    }
    return self;
}

- (void)setLastName:(NSString *)lastName {
    NSLog(@"bbb");
    self->_lastName = [NSString stringWithFormat: @"SuperClass：%@", lastName];
}

@end
