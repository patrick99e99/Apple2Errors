//
//  Apple2ErrorsAppDelegate.h
//  Apple2Errors
//
//  Created by Patrick Collins on 12/17/09.
//  Copyright Collinator Studios 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Apple2ErrorsViewController;

@interface Apple2ErrorsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Apple2ErrorsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Apple2ErrorsViewController *viewController;

@end

