//
//  ViewController.m
//  MemoryOniOS
//
//  Created by 张旭洋 on 2024/5/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//    NSLog(@"didReceiveMemoryWarning");
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];//即使没有显示在window上，也不会自动的将self.view释放。
    // Dispose of any resources that can be recreated.
    //此处做兼容处理需要加上iOS 6.0的宏开关，保证是在6.0下使用的，6.0以前屏蔽以下代码，否则会在下面使用self.view时自动加载viewDidUnLoad
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 6.0) {
        //需要注意的是self.isViewLoaded是必不可少的，其他方式访问视图会导致它加载 ，在WWDC视频也忽视这一点。
        if (self.isViewLoaded && !self.view.window) { // 是否是正在使用的视图
            //code
            self.view = nil;// 目的是再次进入时能够重新加载调用viewDidLoad函数。
        }
    }
}


@end
