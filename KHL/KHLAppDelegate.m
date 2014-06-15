//
//  KHLAppDelegate.m
//  KHL
//
//  Created by Daniel Bell on 2014-06-14.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import "KHLAppDelegate.h"

@implementation KHLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UITabBar *tabBar = tabBarController.tabBar;
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    UITabBarItem *tabBarItem4 = [tabBar.items objectAtIndex:3];
    UITabBarItem *tabBarItem5 = [tabBar.items objectAtIndex:4];
    
    (void)[tabBarItem1 initWithTitle:@"Home" image:[UIImage imageNamed:@"Home"] selectedImage:[UIImage imageNamed:@"Home_filled"]];
    (void)[tabBarItem2 initWithTitle:@"Trouble!" image:[UIImage imageNamed:@"health"] selectedImage:[UIImage imageNamed:@"health"]];
    (void)[tabBarItem3 initWithTitle:@"info" image:[UIImage imageNamed:@"info"] selectedImage:[UIImage imageNamed:@"info"]];
    (void)[tabBarItem4 initWithTitle:@"call" image:[UIImage imageNamed:@"phone"] selectedImage:[UIImage imageNamed:@"phone"]];
    (void)[tabBarItem5 initWithTitle:@"me" image:[UIImage imageNamed:@"User"] selectedImage:[UIImage imageNamed:@"User_filled"]];
    
    // Change the tab bar background
//    UIImage* tabBarBackground = [UIImage imageNamed:@"tabbar.png"];
//    [[UITabBar appearance] setBackgroundImage:tabBarBackground];
    
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
