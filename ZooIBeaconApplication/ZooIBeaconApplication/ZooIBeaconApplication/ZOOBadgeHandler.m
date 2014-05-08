//
//  ZOOBadgeHandler.m
//  ZooIBeaconApplication
//
//  Created by Jason Jones on 4/21/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "ZOOBadgeHandler.h"

@implementation ZOOBadgeHandler

- (NSMutableArray *)getBadges
{
    //Retrieve JSON file
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"animals" ofType:@"json"];
    NSError *error = nil;
    NSData *JSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
    
    // Create an object from JSON Data
    NSArray *jsonBadges = [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingAllowFragments error:&error];
    NSMutableArray *badges = [NSMutableArray array];
    
    // get the root JSON, see ZooBadge.h for the vars
    for (NSDictionary *dictionaryBadges in jsonBadges){
        ZOOBadge *badge = [[ZOOBadge alloc] init];
        badge.badgeName = dictionaryBadges[@"name"];
        badge.hasBeenEarned = [dictionaryBadges[@"earned"] boolValue];
        badge.badgeIconName = dictionaryBadges[@"image"];
        badge.major = [dictionaryBadges[@"major"] integerValue];
        badge.minor = [dictionaryBadges[@"minor"] integerValue];
        [badges addObject:badge];
    }
    
    return badges;
}

- (ZOOBadge *)checkForBadges
{
    NSMutableArray *badges = [self getBadges];
    
    for (ZOOBadge *badge in badges)
    {
        if (badge.major == 62193)
        {
            NSLog(@"Light Blue Beacon");
            badge.hasBeenEarned = true;
        }
        if (badge.major == 12126)
        {
            NSLog(@"Dark Blue Beacon");
            badge.hasBeenEarned = true;
        }
        if (badge.major == 12126)
        {
            NSLog(@"Weird Green/Blue Beacon");
            badge.hasBeenEarned = true;
        }
    }
    
    //Change this to hasBeenEarned?
    return nil;
}


- (ZOOBadge *)getBadge:(NSString *)badgeName;
{
    NSMutableArray *badges = [self getBadges];
    NSString *none = @"None found.";
    
    for (ZOOBadge *badge in badges)
    {
        if (badge.major)
        {
            return badge.badgeName;
        }
    }
    
    return nil;
}


@end