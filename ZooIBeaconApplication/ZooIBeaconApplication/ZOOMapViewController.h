//
//  ZOOFirstViewController.h
//  ZooIBeaconApplication
//
//  Created by Christina Mosnick on 4/3/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZOOMapViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic,weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic,weak) IBOutlet UIImageView *imageView;

@end
