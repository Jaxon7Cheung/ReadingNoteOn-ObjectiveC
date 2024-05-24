//
//  EOCEmployee.m
//  OC2.0
//
//  Created by 张旭洋 on 2024/2/27.
//

#import "EOCEmployee.h"
#import "EOCEmployeeDeveloper.h"
#import "EOCEmployeeDesigner.h"
#import "EOCEmployeeFinance.h"

@implementation EOCEmployee

+ (EOCEmployee *)employeeWithType:(EOCEmployeeType)type {
    EOCEmployee* employee = nil;
    switch (type) {
        case EOCEmployeeTypeDeveloper:
            employee = [EOCEmployeeDeveloper new];
            break;
        case EOCEmployeeTypeDesigner:
            employee = [EOCEmployeeDesigner new];
            break;
        case EOCEmployeeTypeFinance:
            employee = [EOCEmployeeFinance new];
            break;
    }
//    NSLog(@"%i", [employee isMemberOfClass: [EOCEmployee class]]);  // 0
//    NSLog(@"%i", [employee isKindOfClass: [EOCEmployee class]]);    // 1
//    NSLog(@"%i", [employee class] == [EOCEmployee class]);          // 0
    return employee;
}

- (void)doADaysWork {
    //抽象方法由子类们实现
    NSAssert(NO, @"这是一个抽象基类，应由其子类们来实现！");
}

@end
