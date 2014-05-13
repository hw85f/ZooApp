//
//  ZOOTabBarViewController.m
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/17/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "ZOOTabBarViewController.h"
#import "ESTBeaconManager.h"
#import "AGPushNoteView.h"


@interface ZOOTabBarViewController () <ESTBeaconManagerDelegate>

@property (nonatomic, strong) ESTBeacon *beacon;
@property (nonatomic, strong) ESTBeaconManager *beaconManager;
@property (nonatomic, strong) ESTBeaconRegion *beaconRegion;

@end

@implementation ZOOTabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithBeacon:(ESTBeacon *)beacon
{
    self = [super init];
    if (self)
    {
        self.beacon = beacon;
    }
    return self;
}

- (void)viewDidLoad
{
    //hide all bar buttons
    for (int i=0; i< [self viewControllers].count ; i++ )
    {
//        [[[[[self viewControllers] objectAtIndex:i] navigationItem ] rightBarButtonItem] setEnabled:NO];
        [[[[self viewControllers] objectAtIndex:i] navigationItem ] setRightBarButtonItem:nil];

    }
    
    //[[[[self selectedViewController] navigationItem] rightBarButtonItem] setEnabled:false];
    [super viewDidLoad];
    [[UITabBar appearance] setSelectedImageTintColor:[UIColor colorWithRed:(141/255.0) green:(198/255.0) blue:(63/255.0) alpha:1]];
    // Do any additional setup after loading the view.
    
    //Beacon Manager setup
    self.beaconManager = [[ESTBeaconManager alloc] init];
    self.beaconManager.delegate = self;
    
    self.beaconRegion = [[ESTBeaconRegion alloc] initWithProximityUUID:ESTIMOTE_PROXIMITY_UUID
                                                                 major:12126
                                                                 minor:23722
                                                            identifier:@"RegionIdentifier"];
    // start looking for estimote beacons in region
    // when beacon ranged beaconManager:didEnterRegion:
    // and beaconManager:didExitRegion: invoked
    [self.beaconManager startMonitoringForRegion:self.beaconRegion];
    
    [self.beaconManager requestStateForRegion:self.beaconRegion];
    
    [self.beaconManager startRangingBeaconsInRegion:self.beaconRegion];
}

#pragma mark - ESTBeaconManager delegate

- (void)beaconManager:(ESTBeaconManager *)manager didRangeBeacons:(NSArray *)beacons inRegion:(ESTBeaconRegion *)region
{
    if (beacons.count > 0)
    {
        ESTBeacon *firstBeacon = [beacons firstObject];
        [self textForProximity:firstBeacon.proximity];
      /*  for (int i=0; i< [self viewControllers].count ; i++ )
        {
            UIBarButtonItem *rightButtonItem = [[[[self viewControllers] objectAtIndex:i] navigationItem ] rightBarButtonItem];
            if (!rightButtonItem.isEnabled)
            {
                [[[[[self viewControllers] objectAtIndex:i] navigationItem ] rightBarButtonItem] setEnabled:YES];
            }
        }*/
        self.showButton = YES;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"Beacon Detected!!" object:nil];

    }
    else
    {
        NSLog(@"No beacons within region");
        [[NSNotificationCenter defaultCenter] postNotificationName:@"Beacon UnDetected!!" object:nil];
        [self setShowButton:NO];
    }
}

- (void)beaconManager:(ESTBeaconManager *)manager didEnterRegion:(ESTBeaconRegion *)region
{
    NSLog(@"ENTERED REGION");
    
    //AGPushNote
    [AGPushNoteView showWithNotificationMessage:[NSString stringWithFormat:@"You are near the tiger exhibit."]];
    [AGPushNoteView setMessageAction:^(NSString *message) {
        //do nothing at the moment
    }];
    
    //Inactive notification
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:0];
    localNotification.alertBody = @"You are near the tiger exhibit.";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    [[UIApplication sharedApplication] scheduleLocalNotification: localNotification];

}


- (void)beaconManager:(ESTBeaconManager *)manager didExitRegion:(ESTBeaconRegion *)region
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Beacon UnDetected!!" object:nil];
    [self setShowButton:NO];
}
#pragma mark -

- (void)textForProximity:(CLProximity)proximity
{
    switch (proximity) {
        case CLProximityFar:
             NSLog(@"Far");
            break;
        case CLProximityNear:
            NSLog(@"Near");
            break;
        case CLProximityImmediate:
            NSLog(@"Immediate");
            break;
            
        default:
            NSLog(@"Unknown");
            break;
    }
}

- (void)viewDidDisappear:(BOOL)animated
{
    [self.beaconManager stopRangingBeaconsInRegion:self.beaconRegion];
    
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
