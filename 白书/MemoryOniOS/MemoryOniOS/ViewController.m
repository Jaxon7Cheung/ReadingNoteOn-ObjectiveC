//
//  ViewController.m
//  MemoryOniOS
//
//  Created by 张旭洋 on 2024/5/28.
//

#import "ViewController.h"
#import "objc/runtime.h"
#import "MyClass.h"

@interface ViewController () <MyDelegate>

@property (nonatomic, copy)void (^completionBlock)(void);
@property (nonatomic, strong)NSTimer* timer;
@property (nonatomic, strong)MyClass* myClass;

@end

@implementation ViewController

//void PrintClassInfo(id obj) {
//    Class cls = object_getClass(obj);
//    Class superCls = class_getSuperclass(cls);
//    NSLog(@"=== %s : %s ===", class_getName(cls), class_getName(superCls));
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UIView* view = [[UIView alloc] init];
//    [view release];
//    [NSTimer scheduledTimerWithTimeInterval: 0.1 target: self selector: @selector(timeIsUp) userInfo: nil repeats: YES];
//    NSDictionary* dit
    
//    CGImageRef* imageRef = CGImageCreateWithImageInRect(someImage, someRect);
// ...
//    CGImageRelease(imageRef); //  释放内存
    
//    for (int i = 0; i < 1000; ++i) {
//        @autoreleasepool {
//            UIImage* image = [UIImage imageNamed: @"largeImage"];
//            // ...
//        }
//    }
    
//    self.timer = [NSTimer scheduledTimerWithTimeInterval: 1.0 target: self selector: @selector(doSomething) userInfo: nil repeats: NO];
    
//    self.myClass = [[MyClass alloc] init];
//    self.myClass.delegate = self;

    
}

- (void)dealloc {
    NSLog(@"ViewController 对象被释放了");
}

- (void)doSomething {
    NSLog(@"执行do Something 方法");
}

//- (void)timeIsUp {
//    NSLog(@"asd");
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"111" ofType:@"png"];
//    UIImage *image = [[UIImage alloc] initWithContentsOfFile:filePath];
//    CGImageRef temImg = image.CGImage;
//    // 截图
//    temImg = CGImageCreateWithImageInRect(temImg, CGRectMake(0, 0, 100, 100));
//    // 释放
////    CGImageRelease(temImg);
//}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//    NSLog(@"didReceiveMemoryWarning");
//}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];//即使没有显示在window上，也不会自动的将self.view释放。
//    // Dispose of any resources that can be recreated.
//    //此处做兼容处理需要加上iOS 6.0的宏开关，保证是在6.0下使用的，6.0以前屏蔽以下代码，否则会在下面使用self.view时自动加载viewDidUnLoad
//    if ([[UIDevice currentDevice].systemVersion floatValue] >= 6.0) {
//        //需要注意的是self.isViewLoaded是必不可少的，其他方式访问视图会导致它加载 ，在WWDC视频也忽视这一点。
//        if (self.isViewLoaded && !self.view.window) { // 是否是正在使用的视图
//            //code
//            self.view = nil;// 目的是再次进入时能够重新加载调用viewDidLoad函数。
//        }
//    }
//}


@end
