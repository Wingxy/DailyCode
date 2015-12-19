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
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
