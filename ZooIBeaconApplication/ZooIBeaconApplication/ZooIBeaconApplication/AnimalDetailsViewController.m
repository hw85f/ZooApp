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
    
    self.Name.text = [self.animal objectForKey:@"name"];
    self.badge.image = [UIImage imageNamed: [self.animal objectForKey:@"badge"]];
    
    [self.myScrollView setScrollEnabled:YES];
    [self.myScrollView setContentSize:CGSizeMake(320, 3000)];
    
    self.content.text = [self.animal objectForKey:@"content"];
    self.content1.text = [self.animal objectForKey:@"content1"];
    self.content2.text = [self.animal objectForKey:@"content2"];
    self.content3.text = [self.animal objectForKey:@"content3"];
    self.image1.image = [UIImage imageNamed: [self.animal objectForKey:@"image1"]];
    self.image2.image = [UIImage imageNamed: [self.animal objectForKey:@"image2"]];
    self.image3.image = [UIImage imageNamed: [self.animal objectForKey:@"image3"]];

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
