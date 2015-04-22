//
//  Run.h
//  LapTap
//
//  Created by Jason Humphries on 4/22/15.
//  Copyright (c) 2015 Jason Humphries. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Run : NSObject

@property (nonatomic, strong) NSDate *startDate;
@property (nonatomic) double distance;
@property (nonatomic) double duration;

@end
