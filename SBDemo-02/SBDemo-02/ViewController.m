//
//  ViewController.m
//  SBDemo-02
//
//  Created by wxy on 15/12/21.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

// 确认按钮距屏幕底部的距离
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *confirmBtnBottomToSuperBottomConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *confirmBtnHieghtConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *babyBirthdayHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backgroundViewHeightConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     
     布局的要点在于，从底部确认按钮开始进行布局，布局子视图与子视图的约束，以及利用等高这个约束，最后通过backgroundView的高度约束，等高的约束对4，5，6进行适配，没有使用到优先级，很好的一个例子，虽然很简单，学习到了很多。
     
     */
    
    
    if ([UIScreen mainScreen].bounds.size.height == 568) {
        
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        
        // 确认按钮距屏幕底部的约束
        self.confirmBtnBottomToSuperBottomConstraint.constant = 60;
        // 确认按钮的高度约束
        self.confirmBtnHieghtConstraint.constant = 54;
        // 宝宝生日的高度约束
        self.babyBirthdayHeightConstraint.constant = 30;
        // 父view的高度约束
        self.backgroundViewHeightConstraint.constant = 300;
        
    } else if ([UIScreen mainScreen].bounds.size.height == 480) {
        
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        
        self.confirmBtnBottomToSuperBottomConstraint.constant = 30;
        self.confirmBtnHieghtConstraint.constant = 54;
        self.babyBirthdayHeightConstraint.constant = 30;
        self.backgroundViewHeightConstraint.constant = 300;

    } else if ([UIScreen mainScreen].bounds.size.height == 667) {
        
        self.confirmBtnBottomToSuperBottomConstraint.constant = 100;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
