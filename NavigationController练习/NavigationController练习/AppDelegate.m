//
//  AppDelegate.m
//  NavigationController练习
//
//  Created by wxy on 15/12/16.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "AppDelegate.h"
#import "OneViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"OneViewController" bundle:nil];
    
    OneViewController *vc = [sb instantiateViewControllerWithIdentifier:@"OneViewController"];

    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    // 必须设置根控制器 否则崩溃
    self.window.rootViewController = nav;
    // 书写位置随意
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
