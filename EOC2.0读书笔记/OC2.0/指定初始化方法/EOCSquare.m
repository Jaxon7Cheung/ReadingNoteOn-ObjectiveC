//
//  EOCSquare.m
//  OC2.0
//
//  Created by 张旭洋 on 2024/5/7.
//

#import "EOCSquare.h"

@implementation EOCSquare

- (instancetype)initWithDimension:(float)dimension {
    return [super initWithWidth: 5.0f andHeight: 8.0f];
}

- (instancetype)initWithWidth:(float)width andHeight:(float)height {
//    float dimension = MAX(width, height);
//    return [self initWithDimension: dimension];
    @throw [NSException exceptionWithName: NSInternalInconsistencyException reason: @"必须使用initWithDimension:代替" userInfo: nil];
}

- (instancetype)init {
    return [self initWithDimension: 5.0f];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder: coder];
    if (self) {
        // EOCSquare的特定初始化方法
    }
    return self;
}

@end
