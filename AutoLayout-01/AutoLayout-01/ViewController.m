//
//  ViewController.m
//  AutoLayout-01
//
//  Created by wxy on 15/12/20.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    MyView *view = [[MyView alloc] init];
    view.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    
    [self setEdge:self.view view:view attr:NSLayoutAttributeLeft constant:20];
    [self setEdge:self.view view:view attr:NSLayoutAttributeTop constant:20];
    [self setEdge:self.view view:view attr:NSLayoutAttributeRight constant:-20];
    
    
    
    MyView *view2 = [[MyView alloc] init];
    view2.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    view2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view2];
    
    [self setEdge:self.view view:view2 attr:NSLayoutAttributeLeft constant:20];
    [self setEdge:self.view view:view2 attr:NSLayoutAttributeRight constant:-20];
    [self setEdge:self.view view:view2 attr:NSLayoutAttributeBottom constant:-20];

    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:20]];
    
    [view2 setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisVertical];
}

- (void)setEdge:(UIView *)superView view:(UIView *)view attr:(NSLayoutAttribute)attr constant:(CGFloat)constant {
    
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:attr relatedBy:NSLayoutRelationEqual toItem:superView attribute:attr multiplier:1.0 constant:constant]];
}

@end
