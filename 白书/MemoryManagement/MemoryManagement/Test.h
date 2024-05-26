//
//  Test.h
//  MemoryManagement
//
//  Created by 张旭洋 on 2024/5/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Test : NSObject

@property (nonatomic, strong)id object;

//- (instancetype)retain OBJC_ARC_UNAVAILABLE;  //递增引用计数
//- (oneway void)release OBJC_ARC_UNAVAILABLE;  //递减引用计数
//- (instancetype)autorelease OBJC_ARC_UNAVAILABLE;  //待稍后清理“自动释放池”（autorelease pool）时，再递减引用计数
//- (NSUInteger)retainCount OBJC_ARC_UNAVAILABLE;  //返回引用计数个数

@end

NS_ASSUME_NONNULL_END
