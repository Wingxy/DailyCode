//
//  ViewController.m
//  SBDemo-01
//
//  Created by wxy on 15/12/21.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLabelTopToSuper;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backgroundViewHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textFiledHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLabelHeight;

@property (weak, nonatomic) IBOutlet UILabel *babyBirthdayLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"height = %f", [UIScreen mainScreen].bounds.size.height);
    
    if ([UIScreen mainScreen].bounds.size.height == 568) {
        
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        
        self.titleLabelTopToSuper.constant = 50;
        
        self.titleLabelHeight.constant = 54;
        
    } else if ([UIScreen mainScreen].bounds.size.height == 480) {
        
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        
        self.titleLabelTopToSuper.constant = 35;
        
        self.textFiledHeight.constant = 30;
        
        self.titleLabelHeight.constant = 54;
        
    
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
