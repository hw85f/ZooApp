//
//  collectionViewController.m
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/12/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "collectionViewController.h"
#import "ZOOTabBarViewController.h"

@interface collectionViewController ()

@end

@implementation collectionViewController

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

    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"animals" ofType:@"json"];
    NSError *error = nil;
    NSData *JSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
    
    // Create an object from JSON Data
    NSArray *jsonBadges = [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingAllowFragments error:&error];
    
    self.data = jsonBadges;
    
    [self toggleBarButton];
    
    // Do any additional setup after loading the view.
//    [[self barbutton] setEnabled:NO];
    [self navigationItem].rightBarButtonItem = self.barbutton;
    
    //Add listener
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(toggleBarButton) name:@"Beacon Detected!!" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(toggleBarButton) name:@"Beacon UnDetected!!" object:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.data.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    collectionViewCell *myCell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"MyCell"
                                    forIndexPath:indexPath];

    myCell.label.text = [[_data objectAtIndex:indexPath.row] objectForKey:@"name"];
    myCell.image.image = [UIImage imageNamed: [[_data objectAtIndex:indexPath.row] objectForKey:@"badge"]];
    
    return myCell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Show"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        AnimalDetailsViewController *detailviewcontroller = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        detailviewcontroller.animal = [self.data objectAtIndex:[indexPath row]];
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
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
