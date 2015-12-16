//
//  OneViewController.m
//  NavigationController练习
//
//  Created by wxy on 15/12/16.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (IBAction)jump2two {
    
    UINavigationController *nav = self.navigationController;
    
    TwoViewController *vc = [[TwoViewController alloc] init];
    
    [nav pushViewController:vc animated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"德玛西亚";
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = item;
    
    // 最右
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"你好" style:UIBarButtonItemStyleDone target:nil action:nil];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:nil action:nil];
    self.navigationItem.rightBarButtonItems = @[ item1, item2];

    // 自定义标题
    NSDictionary *attr = @{ NSFontAttributeName : [UIFont systemFontOfSize:10], NSForegroundColorAttributeName : [UIColor redColor] };
    [self.navigationController.navigationBar setTitleTextAttributes:attr];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
}


@end
