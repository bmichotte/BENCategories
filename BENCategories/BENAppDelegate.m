//
//  BENAppDelegate.m
//  BENCategories
//
//  Created by Benjamin Michotte on 18/10/13.
//  Copyright (c) 2013 Benjamin Michotte. All rights reserved.
//

#import "BENAppDelegate.h"

@implementation BENAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    UIViewController *viewController = [[UIViewController alloc] initWithNibName:nil bundle:nil];
    [self.window setRootViewController:viewController];

    [self.window makeKeyAndVisible];
    return YES;
}

@end
