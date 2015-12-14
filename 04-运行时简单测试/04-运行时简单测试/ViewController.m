//
//  ViewController.m
//  04-运行时简单测试
//
//  Created by wxy on 15/12/9.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
    btn.frame = CGRectMake(50, 50, 50, 50);
    
    btn.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click:(UIButton *)sender {
    
    
    NSString *message = @"你是谁";
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"我要传值" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
    
    alert.delegate = self;
    
    [alert show];
    
    objc_setAssociatedObject(alert, @"msgStr", message, OBJC_ASSOCIATION_ASSIGN);
    
    objc_setAssociatedObject(alert, @"btn property", sender, OBJC_ASSOCIATION_ASSIGN);
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    NSString *messageStr = objc_getAssociatedObject(alertView, @"msgStr");
    
    UIButton *btn = objc_getAssociatedObject(alertView, @"btn property");
    
    
    NSLog(@"%ld",buttonIndex);
    NSLog(@"%@",messageStr);
    NSLog(@"%@",[[btn titleLabel] text]);
}


@end
