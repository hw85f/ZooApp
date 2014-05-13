//
//  collectionViewController.h
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/12/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "collectionViewCell.h"
#import "AnimalDetailsViewController.h"
#import "ZOOBarButton.h"

@interface collectionViewController : UICollectionViewController

@property (nonatomic, strong) NSArray *data;
@property (nonatomic, strong) IBOutlet ZOOBarButton *barbutton;


@end
