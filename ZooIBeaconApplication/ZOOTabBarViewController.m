//
//  ZOOTabBarViewController.m
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/17/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "ZOOTabBarViewController.h"

@interface ZOOTabBarViewController ()

@end

@implementation ZOOTabBarViewController

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
    [[UITabBar appearance] setSelectedImageTintColor:[UIColor colorWithRed:(141/255.0) green:(198/255.0) blue:(63/255.0) alpha:1]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
