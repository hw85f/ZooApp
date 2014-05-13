//
//  ZOOBeaconHandler.m
//  ZooIBeaconApplication
//
//  Created by Jason Jones on 4/17/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "ZOOBeaconHandler.h"

@interface ZOOBeaconHandler ()

@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation ZOOBeaconHandler

+ (instancetype)sharedBeaconHandler
{
    static ZOOBeaconHandler *_sharedBeaconHandler;
    
    if (!_sharedBeaconHandler) {
        _sharedBeaconHandler = [[ZOOBeaconHandler alloc] init];
    }
    
    return _sharedBeaconHandler;
}

- (void)startBeaconMonitoring
{
    //create the beacon region
    NSLog(@"Hello");
    self.locationManager = [[CLLocationManager alloc] init];
	self.locationManager.delegate = self;
	//NSUUID *uuid = [[NSUUID alloc] initWithUUIDString:@"B9407F30-F5F8-466E-AFF9-25556B57FE6D"];
    
	//CLBeaconRegion *beaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:uuid identifier:@"ZOOBeaconRegion"];
    
    //start monitoring
	//[self.locationManager startMonitoringForRegion:beaconRegion];
}

#pragma mark - Location manager delegate

//- (void)locationManager:(CLLocationManager *)manager didEnterRegion:(CLRegion *)region
//{
//    //NSLog(@"DID ENTER A REGION NAMED : %@", region.identifier);
//	CLBeaconRegion *beaconRegion = (CLBeaconRegion *)region;
//	[manager startRangingBeaconsInRegion:beaconRegion];
//}

- (void)locationManager:(CLLocationManager *)manager didExitRegion:(CLRegion *)region
{
    //get the currently-showing view controller
    CLBeaconRegion *beaconRegion = (CLBeaconRegion *)region;
	[manager stopRangingBeaconsInRegion:beaconRegion];
}

- (void)locationManager:(CLLocationManager *)manager didRangeBeacons:(NSArray *)beacons inRegion:(CLBeaconRegion *)region
{
    //self.nearestBeacon = nil;
    //BOOL earnedBadge = false;
    
    //check the range of beacons
    for (CLBeacon *beacon in beacons) {
		CLProximity proximity = beacon.proximity;
        
        //if the beacons are near/immediate:
        if (proximity == CLProximityNear || proximity == CLProximityImmediate) {
            
            //Create Badge Handler object
            //ZOOBadgeHandler *badgeHandler = [ZOOBadgeHandler new];
            //Get the badge name
            //NSNumber *beaconMinor = beacon.minor;
            //ZOOBadge *earnedBadge = [badgeHandler getBadge:@"badgeName"];
        }
    }
}

@end