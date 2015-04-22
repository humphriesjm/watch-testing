//
//  Track.h
//  LapTap
//
//  Created by Jason Humphries on 4/22/15.
//  Copyright (c) 2015 Jason Humphries. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Track : NSObject

- (instancetype)initWithName:(NSString*)name
              andLapDistance:(float)lapDistance;

@property (strong,nonatomic) NSString *name;
@property (nonatomic) float lapDistance;

@end
