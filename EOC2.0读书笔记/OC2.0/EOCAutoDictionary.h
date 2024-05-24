//
//  EOCAutoDictionary.h
//  OC2.0
//
//  Created by 张旭洋 on 2024/3/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EOCAutoDictionary : NSObject

@property (nonatomic, copy)NSString* string;
@property (nonatomic, strong)NSNumber* number;
@property (nonatomic, strong)NSDate* date;
@property (nonatomic, strong)id opaqueObject;

@end

NS_ASSUME_NONNULL_END
