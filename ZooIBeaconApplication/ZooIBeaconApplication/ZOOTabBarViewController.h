//
//  ZOOTabBarViewController.h
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/17/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ESTBeacon.h"

@interface ZOOTabBarViewController : UITabBarController

- (id)initWithBeacon:(ESTBeacon *)beacon;

@property (nonatomic, assign) BOOL showButton;

@end
