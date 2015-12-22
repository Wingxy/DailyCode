//
//  ViewController.m
//  SBDemo-03
//
//  Created by wxy on 15/12/22.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tryBtnBottomToSuperViewBottomConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textViewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tryBtnTopToBottomViewConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", NSStringFromCGRect([UIScreen mainScreen].bounds));
    
    /*
     
     布局适配的方法多种，不一定要参照于同一个控件，参照不同的控件，设置不同的约束一样可以进行布局约束
     
     */
    
    if ([UIScreen mainScreen].bounds.size.height == 736) {
        
        self.tryBtnBottomToSuperViewBottomConstraint.constant = 100;
    } else if ([UIScreen mainScreen].bounds.size.height == 568) {
        
        self.imageViewWidthConstraint.constant = 280;
        self.textViewHeightConstraint.constant = 150;
    } else if ([UIScreen mainScreen].bounds.size.height == 480) {
        
        self.imageViewWidthConstraint.constant = 280;
        self.textViewHeightConstraint.constant = 150;
        self.tryBtnBottomToSuperViewBottomConstraint.constant = 20;
        self.tryBtnTopToBottomViewConstraint.constant = 20;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
