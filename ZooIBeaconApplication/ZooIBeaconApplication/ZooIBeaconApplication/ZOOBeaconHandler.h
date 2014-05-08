//
//  ZOOBeaconHandler.h
//  ZooIBeaconApplication
//
//  Created by Jason Jones on 4/17/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import <Foundation/Foundation.h>
#import "ZOOBadge.h"
#import "ZOOBadgeHandler.h"

@interface ZOOBeaconHandler : NSObject <CLLocationManagerDelegate>

@property (strong, nonatomic) CLBeacon *nearestBeacon;
@property (weak, nonatomic) UIViewController *currentView;

+ (instancetype)sharedBeaconHandler;
- (void)startBeaconMonitoring;

@end