//
//  ViewController.m
//  AutoLayout简单使用-01
//
//  Created by wxy on 15/12/18.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *topLeftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [topLeftBtn setTitle:@"topLeftBtn" forState:UIControlStateNormal];
    [topLeftBtn setTitleColor:[UIColor  blackColor] forState:UIControlStateNormal];
    [topLeftBtn setBackgroundColor:[UIColor greenColor]];
    [topLeftBtn setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:topLeftBtn];
    
    UIButton *topRightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [topRightBtn setTitle:@"topRightBtn" forState:UIControlStateNormal];
    [topRightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [topRightBtn setBackgroundColor:[UIColor redColor]];
    [topRightBtn setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:topRightBtn];
    
    
    UIButton *bottomBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [bottomBtn setTitle:@"bottomBtn" forState:UIControlStateNormal];
    [bottomBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bottomBtn setBackgroundColor:[UIColor blueColor]];
    [bottomBtn setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:bottomBtn];
    
    NSLayoutConstraint *topLeftBtnLeadingConstraint = [NSLayoutConstraint constraintWithItem:topLeftBtn attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:10];
    [self.view addConstraint:topLeftBtnLeadingConstraint];
    
    NSLayoutConstraint *topLeftBtnTopConstraint = [NSLayoutConstraint constraintWithItem:topLeftBtn attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:10];
    [self.view addConstraint:topLeftBtnTopConstraint];
    
    NSLayoutConstraint *topLeftBtnBottomConstraint = [NSLayoutConstraint constraintWithItem:topLeftBtn attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:bottomBtn attribute:NSLayoutAttributeTop multiplier:1.0 constant:-10];
    [self.view addConstraint:topLeftBtnBottomConstraint];
    
    NSLayoutConstraint *topRightBtntTopConstraint = [NSLayoutConstraint constraintWithItem:topRightBtn attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:topLeftBtn attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    [self.view addConstraint:topRightBtntTopConstraint];
    
    NSLayoutConstraint *topRightBtnLeadingConstraint = [NSLayoutConstraint constraintWithItem:topRightBtn attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:topLeftBtn attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:10];
    [self.view addConstraint:topRightBtnLeadingConstraint];
    
    NSLayoutConstraint *topRightBtnTrailingConstraint = [NSLayoutConstraint constraintWithItem:topRightBtn attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:-10];
    [self.view addConstraint:topRightBtnTrailingConstraint];
    
    NSLayoutConstraint *leftAndRightEqualWidthConstraint = [NSLayoutConstraint constraintWithItem:topRightBtn attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:topLeftBtn attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0];
    [self.view addConstraint:leftAndRightEqualWidthConstraint];
    
    NSLayoutConstraint *leftAndRightEqualHeightConstraint = [NSLayoutConstraint constraintWithItem:topRightBtn attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:topLeftBtn attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
    [self.view addConstraint:leftAndRightEqualHeightConstraint];
    
    NSLayoutConstraint *bottomBtnLeadingConstraint = [NSLayoutConstraint constraintWithItem:bottomBtn attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:topLeftBtn attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    [self.view addConstraint:bottomBtnLeadingConstraint];
    
    NSLayoutConstraint *bottomBtnTrailingConstraint = [NSLayoutConstraint constraintWithItem:bottomBtn attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:topRightBtn attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    [self.view addConstraint:bottomBtnTrailingConstraint];
    
    NSLayoutConstraint *bottomBtnTopConstraint = [NSLayoutConstraint constraintWithItem:bottomBtn attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:topLeftBtn attribute:NSLayoutAttributeBottom multiplier:1.0 constant:10];
    [self.view addConstraint:bottomBtnTopConstraint];
    
    NSLayoutConstraint *bottomBtnBottomConstraint = [NSLayoutConstraint constraintWithItem:bottomBtn attribute:NSLayoutAttributeBottomMargin relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-20];
    [self.view  addConstraint:bottomBtnBottomConstraint];

    NSLayoutConstraint *bottomBtnEqualHeightConstraint = [NSLayoutConstraint constraintWithItem:bottomBtn attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:topLeftBtn attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
    [self.view addConstraint:bottomBtnEqualHeightConstraint];
    
    /*
     
     竖屏时：设三个Button的高度是x未知数，三个Button高度一样，10+x+10+x+10=568 --->x=269，三个按钮高度都是269像素。BottomBtn的宽度是10+y+10=320--->y=300,BottomBtn的宽就是300像素。现在主是计算TopLeftBtn  TopRightBtn的宽了，TopLeftBtn与TopRightBtn的宽相等，那么10+z+10+z+10=320-->z=145,他们的宽就是145像素了，现在一切就好说了
     
     TopLeftBtn的frame 就是（10,10,145,269）   TopRightBtn的frame为（10+145+10,10,145,269）
     
     BottomBtn的frame就是(10,10+269+10,145,269)
     
     横屏一样，只不过是宽度换过来了，其他的一样。
     
     如果是4s或者6  6plus只不过是屏幕尺寸不一样而已都按上面的公式计算，得出的frame也不一样，所以说只要你的约束加得好，就会控制控件的位置，实现多屏配适配
     
     */
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
