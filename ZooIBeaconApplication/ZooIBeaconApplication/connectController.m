//
//  connectController.m
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "connectController.h"

@interface connectController ()

@end

@implementation connectController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[self.background addSubview:self.zooIcon];
    self.background.image = [UIImage imageNamed: @"tigerDark"];
    self.zooIcon.image = [UIImage imageNamed: @"ziewIcon"];
    self.pano.image = [UIImage imageNamed: @"pano"];
    
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Facebook:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.facebook.com"]];
}
- (IBAction)Twitter:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.twitter.com/ziewapp"]];
}
- (IBAction)Website:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com"]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
