//
//  Apple2ErrorsAppDelegate.m
//  Apple2Errors
//
//  Created by Patrick Collins on 12/17/09.
//  Copyright Collinator Studios 2009. All rights reserved.
//

#import "Apple2ErrorsAppDelegate.h"
#import "Apple2ErrorsViewController.h"

@implementation Apple2ErrorsAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
