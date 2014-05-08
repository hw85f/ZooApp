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
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (strong, nonatomic) NSDictionary *animal;
@property (strong, nonatomic) IBOutlet UIImageView *badge;
@property (strong, nonatomic) IBOutlet UILabel *content1;
@property (strong, nonatomic) IBOutlet UILabel *content2;
@property (strong, nonatomic) IBOutlet UILabel *content3;
@property (strong, nonatomic) IBOutlet UIImageView *image1;
@property (strong, nonatomic) IBOutlet UIImageView *image2;
@property (strong, nonatomic) IBOutlet UIImageView *image3;
@property (strong, nonatomic) IBOutlet UILabel *content;

@end
