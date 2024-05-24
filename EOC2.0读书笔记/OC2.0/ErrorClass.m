//
//  ErrorClass.m
//  OC2.0
//
//  Created by 张旭洋 on 2024/5/16.
//

#import "ErrorClass.h"

@implementation ErrorClass

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    return;
}

- (BOOL)doSomething:(NSError **)error {
    // Do something that may cause an error
    if (/*There was an error*/1) {
        if (error) {
//            *error = [NSError errorWithDomain: domain code: code userInfo: userInfo];
        }
        return NO;
    } else {
        return YES;
    }
}

@end
