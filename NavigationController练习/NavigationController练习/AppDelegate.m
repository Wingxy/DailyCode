//
//  AppDelegate.m
//  NavigationController练习
//
//  Created by wxy on 15/12/16.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    
    vc1.view.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];

    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc1];
    
    // 必须设置根控制器 否则崩溃
    self.window.rootViewController = nav;
    // 书写位置随意
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
