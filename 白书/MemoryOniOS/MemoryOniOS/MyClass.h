//
//  MyClass.h
//  MemoryOniOS
//
//  Created by 张旭洋 on 2024/6/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyDelegate <NSObject>

@end

@interface MyClass : NSObject

@property (nonatomic, strong)void (^myBlock)(void);
@property (nonatomic, strong)id<MyDelegate> delegate;

- (void)setupBlock;

@end

NS_ASSUME_NONNULL_END
