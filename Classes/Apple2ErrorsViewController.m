//
//  Apple2ErrorsViewController.m
//  Apple2Errors
//
//  Created by Patrick Collins on 12/17/09.
//  Copyright Collinator Studios 2009. All rights reserved.
//

#import "Apple2ErrorsViewController.h"

@implementation Apple2ErrorsViewController

-(id)initWithCoder:(NSCoder *)decoder {

	if (self = [super initWithCoder:decoder]) {
		
		NSURL* audioFile = [NSURL fileURLWithPath:[[NSBundle mainBundle]
												   pathForResource:@"apple2beep"
												   ofType:@"aif"]];
		
		AudioServicesCreateSystemSoundID((CFURLRef)audioFile, &appleBeep);
		
		appleErrors = [[NSArray alloc] initWithObjects:@"?SYNTAX ERROR", @"?OUT OF MEMORY", @"?STACK OVERFLOW", @"?BREAK", nil];
		appleCommands = [[NSArray alloc] initWithObjects:@"CATALOG", @"CALL-151", @"NOMON C,I,O", @"HOME", @"INIT HELLO", @"GR", @"HGR", @"HGR2", @"LIST", @"10 PRINT \"HELLO\"", @"20 GOTO 10", @"PR#6", @"PR#3", @"VTAB 1", @"HTAB 20", @"PRINT A$", @"POKE 33,34", @"X=PEEK(-16336)", nil];
		printf(&appleErrors);	
	
    return self;
}

- (IBAction)showError:(id)sender
{
	AudioServicesPlaySystemSound(appleBeep);
	
	[appleError setText:[self randomItemFromArray:appleErrors]];
}

- (IBAction)showCommand:(id)sender
{
	[appleError setText:@""];
	[appleCommand setText:[self randomItemFromArray:appleCommands]];
}

- (NSString*)randomItemFromArray:array {
	int itemNumber = arc4random() % [array count];
	NSString *item = [NSString stringWithFormat:@"%@", [array objectAtIndex:itemNumber]];
	
	return item;	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
	[appleErrors release];
	[appleCommands release];
    [super dealloc];
}

@end
