//
//  ErrorClass.h
//  OC2.0
//
//  Created by 张旭洋 on 2024/5/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ErrorClass : NSObject <NSURLConnectionDelegate>

- (BOOL)doSomething:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
