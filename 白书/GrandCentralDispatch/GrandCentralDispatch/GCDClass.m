//
//  GCDClass.m
//  GrandCentralDispatch
//
//  Created by 张旭洋 on 2024/4/2.
//

#import "GCDClass.h"

@implementation GCDClass

///*
// NSObject performSelectorInBackground: withObject:方法中
// 执行后台线程
// */
//
//- (void)launchThreadByNSObjectSeletorInBackground_withObject {
//    [self performSelectorInBackground: @selector(doWork) withObject: nil];
//}
//
///*
// 后台线程处理方法
// */
//- (void)doWork {
//    //注意：NSAutoreleasePool类是在手动内存管理（非ARC）的环境下使用的
//    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
//    // 
//    /*
//     长时间处理
//     */
//    
//    
//    [self performSelectorOnMainThread: @selector(doneWork) withObject: nil waitUntilDone: NO];
//    
//    [pool drain];
//}
//
///*
// 主线程处理
// */
//- (void)doneWork {
//    /*
//     只在主线程可以执行的处理
//     */
//    NSLog(@"只在主线程可以执行的处理");
//}

@end
