//
//  AppDelegate.m
//  DataPersistence
//
//  Created by 彭盛凇 on 2019/3/11.
//  Copyright © 2019 彭盛凇. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    
    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];    
    
    // Override point for customization after application launch.
    return YES;
}

@end
