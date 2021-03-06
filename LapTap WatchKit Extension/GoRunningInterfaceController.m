//
//  InterfaceController.m
//  LapTap WatchKit Extension
//
//  Created by Jason Humphries on 4/21/15.
//  Copyright (c) 2015 Jason Humphries. All rights reserved.
//

#import "GoRunningInterfaceController.h"


@interface GoRunningInterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceButton *startRunButton;
@end

@implementation GoRunningInterfaceController

- (void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];
}

- (void)willActivate
{
    [super willActivate];
}

- (void)didDeactivate
{
    [super didDeactivate];
}

#pragma mark - custom actions

- (IBAction)startRunAction
{
    //
}

@end



