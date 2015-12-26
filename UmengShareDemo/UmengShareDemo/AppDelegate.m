//
//  AppDelegate.m
//  UmengShareDemo
//
//  Created by wxy on 15/12/23.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "AppDelegate.h"
#import "UMSocial.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [UMSocialData setAppKey:@"567a0e18e0f55a037a00ae8d"];
    
    return YES;
}

@end
