//
//  EOCEmployer.h
//  OC2.0
//
//  Created by 张旭洋 on 2024/2/15.
//

#import <Foundation/Foundation.h>
//#import "EOCPerson.h"
@class EOCPerson;

NS_ASSUME_NONNULL_BEGIN

@interface EOCEmployer : NSObject

//@property (nonatomic, assign)NSTimeInterval ANIMATION_DURATION;

- (void)addEmployee: (EOCPerson *)person;
- (void)removeEmployee: (EOCPerson *)person;

@end

NS_ASSUME_NONNULL_END
