//
//  Apple2ErrorsViewController.h
//  Apple2Errors
//
//  Created by Patrick Collins on 12/17/09.
//  Copyright Collinator Studios 2009. All rights reserved.
//

#import <AudioToolbox/AudioToolbox.h>
#import <UIKit/UIKit.h>

@interface Apple2ErrorsViewController : UIViewController {
	IBOutlet UILabel *appleError;
	IBOutlet UILabel *appleCommand;
	NSArray *appleErrors;
	NSArray *appleCommands;
	NSArray *bar;
	SystemSoundID appleBeep;
}

- (IBAction)showError:(id)sender;
- (IBAction)showCommand:(id)sender;
- (NSString*)randomItemFromArray:array;

@end

