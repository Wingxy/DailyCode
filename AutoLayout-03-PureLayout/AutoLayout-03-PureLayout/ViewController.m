//
//  ViewController.m
//  AutoLayout-03-PureLayout
//
//  Created by wxy on 15/12/20.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"
#import <PureLayout/PureLayout.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    [self.view addSubview:view2];
    
    // 设置view1的高度为70
    [view1 autoSetDimension:ALDimensionHeight toSize:70];
    
    // 距离父控件都是20
    ALEdgeInsets defInsets = ALEdgeInsetsMake(20,20,20,20);
    
    [view1 autoPinEdgesToSuperviewEdgesWithInsets:defInsets excludingEdge:ALEdgeBottom];
    [view2 autoPinEdgesToSuperviewEdgesWithInsets:defInsets excludingEdge:ALEdgeTop];
    
    [view2 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:view1 withOffset:20];
    
    // 优先级不知道怎么用 
    [view2 setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisVertical];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
