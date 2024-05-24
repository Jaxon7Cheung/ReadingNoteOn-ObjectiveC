//
//  EOCPerson.h
//  OC2.0
//
//  Created by 张旭洋 on 2024/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol EOCSecretDelegate;

@interface EOCPerson : NSObject /*<EOCSecretDelegate>*/

@property (nonatomic, copy)NSString* firstName;
@property (nonatomic, copy)NSString* lastName;

@end

NS_ASSUME_NONNULL_END
