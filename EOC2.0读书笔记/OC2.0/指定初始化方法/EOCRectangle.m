//
//  EOCRectangle.m
//  OC2.0
//
//  Created by 张旭洋 on 2024/5/7.
//

#import "EOCRectangle.h"

@implementation EOCRectangle

- (instancetype)initWithWidth:(float)width andHeight:(float)height {
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
    }
    return self;
}

// 2. 使用全能初始化方法覆写init
- (instancetype)init {
    return [self initWithWidth: 5.0f andHeight: 8.0f];
}

// 3. 抛出异常
//- (instancetype)init {
//    @throw [NSException exceptionWithName: NSInternalInconsistencyException reason: @"必须使用initWithWidth:andHeight:代替" userInfo: nil];
//}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        _width = [coder decodeFloatForKey: @"width"];
        _height = [coder decodeFloatForKey: @"height"];
    }
    return self;
}

@end
