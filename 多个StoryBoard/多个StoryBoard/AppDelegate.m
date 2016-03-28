//
//  AppDelegate.m
//  多个StoryBoard
//
//  Created by Wangguibin on 16/3/28.
//  Copyright © 2016年 DDYS. All rights reserved.
//
/*!
 *  @author WGB, 16-03-28 11:03:36
 *  三个storyBoard 一起  分功能模块化开发
 *  
 *
 */
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    _window =[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [_window makeKeyAndVisible];
    _window.backgroundColor=[UIColor whiteColor];

/*以下这坨代码可以抽出来 自定义一个UITabBarController 和 tabbar*/
    UIStoryboard *sb1=[UIStoryboard storyboardWithName:@"StoryboardA" bundle:nil];
    UIStoryboard *sb2=[UIStoryboard storyboardWithName:@"StoryboardB" bundle:nil];
    UIStoryboard *sb3=[UIStoryboard storyboardWithName:@"StoryboardC" bundle:nil];


    UITabBarController *tabVc=[[UITabBarController alloc]init];

    UINavigationController *nvc1=sb1.instantiateInitialViewController;
    UINavigationController *nvc2=sb2.instantiateInitialViewController;
    UINavigationController *nvc3=sb3.instantiateInitialViewController;

    [tabVc addChildViewController:nvc1];
    [tabVc addChildViewController:nvc2];
    [tabVc addChildViewController:nvc3];

    [nvc1.tabBarItem setImage:[UIImage imageNamed:@"tab_icon_home"]];
    [nvc1.tabBarItem setSelectedImage:[UIImage imageNamed:@"tab_icon_home_pressed"]];

    [nvc2.tabBarItem setImage:[UIImage imageNamed:@"tab_icon_fo"]];
    [nvc2.tabBarItem setSelectedImage:[UIImage imageNamed:@"tab_icon_fo_pressed"]];

    [nvc3.tabBarItem setImage:[UIImage imageNamed:@"tab_icon_message"]];
    [nvc3.tabBarItem setSelectedImage:[UIImage imageNamed:@"tab_icon_message_pressed"]];

    _window.rootViewController=tabVc;


    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
