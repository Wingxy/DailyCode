//
//  ViewController.m
//  03-NavigationBar设置
//
//  Created by wxy on 15/12/9.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn1.frame = CGRectMake(38, 100, 300, 30);
    
    [btn1 setTitle:@"jump to second viewController" forState:UIControlStateNormal];
    
    btn1.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    
    [btn1 addTarget:self action:@selector(jump2second) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn1];
    
    /*
     UIBarStyleDefault          = 0, 白色半透明
     UIBarStyleBlack            = 1, 黑色半透明
     
     UIBarStyleBlackOpaque      = 1, // 废弃，用UIBarStyleBlack
     UIBarStyleBlackTranslucent = 2, // 废弃，用UIBarStyleBlack，并设置Translucent为YES
     
     */
    
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    // 感觉设置YES和设效果差不多
    self.navigationController.navigationBar.translucent = YES;
    
    self.navigationController.navigationBar.backgroundColor = [UIColor orangeColor];
    
    // 20 高度留给状态栏
    NSLog(@"%@",NSStringFromCGSize(self.navigationController.navigationBar.frame.size));
    NSLog(@"%@",NSStringFromCGPoint(self.navigationController.navigationBar.frame.origin));
    
    // 隐藏导航栏
    self.navigationController.navigationBarHidden = NO;
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
    /*
     给导航条增加背景图片，其中forBarMetrics有点类似于按钮的for state状态，即什么状态下显示
     UIBarMetricsDefault-竖屏横屏都有，横屏导航条变宽，则自动repeat图片
     UIBarMetricsCompact-竖屏没有，横屏有，相当于之前老iOS版本里地UIBarMetricsLandscapePhone
     UIBarMetricsCompactPrompt和UIBarMetricsDefaultPrompt暂时不知道用处，官方解释是Applicable only in bars with the prompt property, such as UINavigationBar and UISearchBar，以后遇到时再细说
     */
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_navbar"] forBarMetrics:UIBarMetricsDefault];
    
    // 如果图片太大会向上扩展侵占状态栏的位置，在状态栏下方显示
    // clipsToBounds就是把多余的图片裁剪掉
    self.navigationController.navigationBar.clipsToBounds = YES;
    
    self.navigationItem.title = @"主页";
    
    // 设置导航标题视图
    UIView *textView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    
    textView.backgroundColor = [UIColor whiteColor];
    
    [self.navigationItem setTitleView:textView];
    
    /*
     UIBarButtonItemStylePlain, 字体比较方正
     UIBarButtonItemStyleDone, 字体比较圆滑
     */
    
    // 导航条的左按钮
    UIBarButtonItem *barBtn1 = [[UIBarButtonItem alloc] initWithTitle:@"左边" style:UIBarButtonItemStyleDone target:self action:@selector(changeColorOne)];
    
    self.navigationItem.leftBarButtonItem = barBtn1;
    
    // 导航条右按钮--系统相机
    UIBarButtonItem *barBtn2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(changeColorTwo)];
    // 导航条右按钮--自定义图片
    UIBarButtonItem *barBtn3 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_list_cancle_normal"] style:UIBarButtonItemStyleDone target:self action:@selector(changeColorThree)];
    // 导航条右按钮--自定义view
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 20, 20)];
    view4.backgroundColor = [UIColor greenColor];
    UIBarButtonItem *barBtn4 = [[UIBarButtonItem alloc] initWithCustomView:view4];
    
    NSArray *array = [[NSArray alloc] initWithObjects:barBtn2, barBtn3, barBtn4, nil];
    
    self.navigationItem.rightBarButtonItems = array;
    
}

- (void)changeColorOne {
    
    self.view.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
}

- (void)changeColorTwo {
    
    self.view.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
}

- (void)changeColorThree {
    
    self.view.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
}

- (void)jump2second {
    
    
}
@end
