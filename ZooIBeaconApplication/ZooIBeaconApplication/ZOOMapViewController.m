//
//  ZOOFirstViewController.m
//  ZooIBeaconApplication
//
//  Created by Christina Mosnick on 4/3/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "ZOOMapViewController.h"
#import "ZOOTabBarViewController.h"


@interface ZOOMapViewController ()

@end

@implementation ZOOMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.imageView setImage:[UIImage imageNamed:@"ZiewMap"]];
    
    [self.scrollView setMaximumZoomScale:2.0f];
    [self.scrollView setMinimumZoomScale:0.5f];
   
    
    self.scrollView.contentSize = self.imageView.image.size;
    self.imageView.frame = CGRectMake(0,0, self.imageView.image.size.width, self.imageView.image.size.height);
    [self.scrollView setZoomScale:0.5f];
    [self.scrollView setClipsToBounds:YES];
    
    [self toggleBarButton];
    
    // Do any additional setup after loading the view.
    //    [[self barbutton] setEnabled:NO];
    [self navigationItem].rightBarButtonItem = self.barbutton;
    
    //Add listener
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(toggleBarButton) name:@"Beacon Detected!!" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(toggleBarButton) name:@"Beacon UnDetected!!" object:nil];
   
}

-(void) toggleBarButton
{
    //Check tab bar for showbutton
    if ([(ZOOTabBarViewController*)[[self parentViewController] parentViewController] showButton])
    {
        [[self barbutton] setEnabled:YES];
        [[[self barbutton] buttonLabel] setText:@"Nearby Exhibit"];
    }
    else
    {
        [[self barbutton] setEnabled:NO];
        [[[self barbutton] buttonLabel] setText:@""];
    }
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

-(void)viewDidUnload
{
    [self setImageView:nil];
    [self setScrollView:nil];
    [self viewDidUnload];
}

@end
