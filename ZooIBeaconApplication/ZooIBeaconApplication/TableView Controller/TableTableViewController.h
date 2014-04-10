//
//  TableTableViewController.h
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimalDetailsViewController.h"

@interface TableTableViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UINavigationItem *navagationbar;
@property (nonatomic, strong) NSMutableArray *data;

@end
