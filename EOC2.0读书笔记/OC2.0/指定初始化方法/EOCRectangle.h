//
//  EOCRectangle.h
//  OC2.0
//
//  Created by 张旭洋 on 2024/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EOCRectangle : NSObject <NSCoding>

@property (nonatomic, assign, readonly)float width;
@property (nonatomic, assign, readonly)float height;

// 1. 使用NS_UNAVAILABLE来禁用该初始化方法
//+ (instancetype)new NS_UNAVAILABLE;
//- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithWidth:(float)width andHeight:(float)height;

@end

NS_ASSUME_NONNULL_END
