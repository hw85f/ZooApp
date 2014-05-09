//
//  ZOOBadgeHandler.h
//  ZooIBeaconApplication
//
//  Created by Jason Jones on 4/21/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZOOBadge.h"

@interface ZOOBadgeHandler : NSObject

@property (nonatomic, strong)NSArray *badgeArray;

- (NSMutableArray *)getBadges;
- (ZOOBadge *)checkForBadges;
- (ZOOBadge *)getBadge:(NSString *)badgeName;

@end