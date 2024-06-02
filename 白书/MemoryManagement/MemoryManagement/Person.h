//
//  Person.h
//  MemoryManagement
//
//  Created by 张旭洋 on 2024/6/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, strong)Person* friends;

@end

NS_ASSUME_NONNULL_END
