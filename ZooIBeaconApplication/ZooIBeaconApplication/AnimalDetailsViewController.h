//
//  AnimalDetailsViewController.h
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimalDetailsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *Name;
@property (strong, nonatomic) IBOutlet UIImageView *AnimalIamge;
@property (strong, nonatomic) IBOutlet UITextView *content;
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (strong, nonatomic) NSDictionary *animal;
@property (strong, nonatomic) IBOutlet UIImageView *badge;

@end
