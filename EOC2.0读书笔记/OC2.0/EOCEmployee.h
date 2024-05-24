//
//  EOCEmployee.h
//  OC2.0
//
//  Created by 张旭洋 on 2024/2/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, EOCEmployeeType) {
    EOCEmployeeTypeDeveloper,
    EOCEmployeeTypeDesigner,
    EOCEmployeeTypeFinance
};

@interface EOCEmployee : NSObject

@property (copy) NSString* name;
@property NSUInteger salary;

+ (EOCEmployee *)employeeWithType: (EOCEmployeeType)type;
- (void)doADaysWork;

@end

NS_ASSUME_NONNULL_END
