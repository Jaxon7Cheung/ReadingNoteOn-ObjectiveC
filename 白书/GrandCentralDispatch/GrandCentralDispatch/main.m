//
//  main.m
//  GrandCentralDispatch
//
//  Created by 张旭洋 on 2024/4/2.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        dispatch_queue_t queue;
//        dispatch_async(queue, ^{
//            /*
//             长时间处理
//             例如：AR用画像识别、数据库访问
//             */
//            
//            /*
//             长时间处理结束，主线程使用该处理结果
//             */
//            
//            dispatch_async(dispatch_get_main_queue(), ^{
//                /*
//                 只在主线程可以执行的处理
//                 例如：更新UI界面等
//                 */
//            });
//        });
        
//        //创建一个串行队列
//        dispatch_queue_t queue_1 = dispatch_queue_create("com.example.myapp", DISPATCH_QUEUE_SERIAL);
//        //创建一个并发队列
//        dispatch_queue_t queue_2 = dispatch_queue_create("com.example.myapp", DISPATCH_QUEUE_CONCURRENT);
        
//        获取主队列
//        dispatch_queue_t queue_main = dispatch_get_main_queue();
        
        //获取全局并发队列
        dispatch_queue_t queue_global = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        
        
        
        

    }
    return 0;
}

/*
 NSObject
 */


