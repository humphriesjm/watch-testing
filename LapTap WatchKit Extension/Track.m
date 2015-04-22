//
//  Track.m
//  LapTap
//
//  Created by Jason Humphries on 4/22/15.
//  Copyright (c) 2015 Jason Humphries. All rights reserved.
//

#import "Track.h"

@implementation Track

- (instancetype)initWithName:(NSString*)name
              andLapDistance:(float)lapDistance
{
    self = [super init];
    if (self) {
        self.name = name;
        self.lapDistance = lapDistance;
    }
    return self;
}

@end
