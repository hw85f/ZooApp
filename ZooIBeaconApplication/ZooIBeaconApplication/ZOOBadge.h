//
//  ZOOBadge.h
//  ZooIBeaconApplication
//
//  Created by Jason Jones on 4/21/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZOOBadge : NSObject <NSCoding>

@property (nonatomic, strong) NSString *badgeName;
@property (nonatomic, strong) NSString *badgeIconName;
@property (nonatomic, assign) BOOL hasBeenEarned;
@property (nonatomic, assign) NSInteger major;
@property (nonatomic, assign) NSInteger minor;

@end