//
//  AppDelegate.m
//  GazFreshAerServNative
//
//  Created by user901116 on 12/21/15.
//  Copyright © 2015 user901116. All rights reserved.
//

#import "AppDelegate.h"
#import "AerServSDK/AerServSDK.h"

@interface AppDelegate ()//<ASInterstitialViewControllerDelegate, ASAdViewDelegate>
//@property (nonatomic, assign) ASInterstitialViewController *adController;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // initialize aerservsdk for placement
    [AerServSDK initializeWithPlacments:@[
                                          //                                          @"1002090", @"1003250", @"1007853", // AdColony
                                          //                                          @"1002091", @"1007934", // VUNGLE
                                          //                                          @"1005994", // CHARTBOOST
                                          //                                          @"1005992", // APPLOVIN
                                          //                                          @"300077", // TEST PLACEMENT
                                          ]];
    
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
    NSLog(@"applicationDidBecomeActive()");
    
   /* self.adController = [[ASInterstitialViewController alloc] viewControllerForPlacementID:@"1000741" withDelegate:self];
    //self.adController.showOutline = YES;
    NSLog(@"a()");
    [self.adController loadAd];
    NSLog(@"b()");
    [self.adController showFromViewController:self];
    NSLog(@"c()");*/
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
