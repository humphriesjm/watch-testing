//
//  RunTimerInterfaceController.m
//  LapTap
//
//  Created by Jason Humphries on 4/21/15.
//  Copyright (c) 2015 Jason Humphries. All rights reserved.
//

#import "RunTimerInterfaceController.h"
#import "LapTap WatchKit Extension-Bridging-Header.h"
#import "Track.h"

@interface RunTimerInterfaceController ()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *distanceLabel;
@property (strong, nonatomic) Track *track;
@property (nonatomic) float distance;
@end

@implementation RunTimerInterfaceController

- (void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.track = [[Track alloc] initWithName:@"Track"
                                  andLapDistance:500.0];
    }
    return self;
}

- (void)willActivate
{
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    [self updateDistanceLabel];
}

- (void)didDeactivate
{
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)updateDistanceLabel
{
    NSLengthFormatter *lf = [NSLengthFormatter new];
    lf.numberFormatter.maximumSignificantDigits = 3;
    
    [self.distanceLabel setText:[lf stringFromMeters:self.distance]];
}

#pragma mark - custom actions

- (IBAction)endRunButtonPressed
{
    [self endRun];
}

- (void)endRun
{
    //
}

- (IBAction)finishLapAction
{
    self.distance += self.track.lapDistance;
    [self updateDistanceLabel];
}

@end



