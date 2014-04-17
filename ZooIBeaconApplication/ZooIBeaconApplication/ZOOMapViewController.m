//
//  ZOOFirstViewController.m
//  ZooIBeaconApplication
//
//  Created by Christina Mosnick on 4/3/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "ZOOMapViewController.h"

@interface ZOOMapViewController ()

@end

@implementation ZOOMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.imageView setImage:[UIImage imageNamed:@"Screen Shot 2014-04-08 at 2.09.59 PM.png"]];
    
    [self.scrollView setMaximumZoomScale:5.0f];
    [self.scrollView setClipsToBounds:YES];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

@end
