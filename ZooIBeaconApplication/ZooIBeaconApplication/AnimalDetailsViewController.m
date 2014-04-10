//
//  AnimalDetailsViewController.m
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "AnimalDetailsViewController.h"

@interface AnimalDetailsViewController ()

@end

@implementation AnimalDetailsViewController

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
    
    self.Name.text = self.test;
    
    [self.myScrollView setScrollEnabled:YES];
    [self.myScrollView setContentSize:CGSizeMake(300, 915)];
    [self.content setScrollEnabled:NO];
    
    self.content.text = @"Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.Kuala Lumpur, Malaysia (CNN) -- It may only be a few hours or a few days before the pingers that were aboard missing Malaysia Airlines Flight 370 stop transmitting for good.ppppp";
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
