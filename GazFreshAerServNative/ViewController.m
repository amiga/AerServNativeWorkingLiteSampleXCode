//
//  ViewController.m
//  GazFreshAerServNative
//
//  Created by user901116 on 12/21/15.
//  Copyright © 2015 user901116. All rights reserved.
//

#import "ViewController.h"
#import "AerServSDK/AerServSDK.h"

@interface ViewController ()<ASInterstitialViewControllerDelegate, ASAdViewDelegate>


@property (strong, nonatomic) ASInterstitialViewController* adController;
@property (nonatomic, assign) BOOL isLoaded;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad()");    
    self.isLoaded = NO;
    self.adController = [[ASInterstitialViewController alloc] viewControllerForPlacementID:@"1000741" withDelegate:self];
    self.adController.isPreload = YES;
    [self.adController loadAd];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/// Ad Preloaded ///
- (void)interstitialViewControllerDidPreloadAd:(ASInterstitialViewController *)viewController {
     NSLog(@"interstitialViewControllerDidPreloadAd");
    self.isLoaded = YES;
    [self.adController showFromViewController:self];
}
/// Ad loaded ///
- (void)interstitialViewControllerAdLoadedSuccessfully:(ASInterstitialViewController *)viewController {
    NSLog(@"Ad loaded");
    self.isLoaded = YES;
    [self.adController showFromViewController:self];
}
/// Ad Failed ///
- (void)interstitialViewControllerAdFailedToLoad:(ASInterstitialViewController*)viewController withError:(NSError*)error {
    NSLog(@"Ad Failed to load with error:%@", error);
}
/// Ad Clicked ///
- (void)interstitialViewControllerAdWasTouched:(ASInterstitialViewController *)viewController {
    NSLog(@"ad was touched");
}
/// Ad Dismissed ///
- (void)interstitialViewControllerDidDisappear:(ASInterstitialViewController *)viewController {
    self.adController = nil;
    NSLog(@"ad dismissed");
}
@end
