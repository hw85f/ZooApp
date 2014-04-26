//
//  collectionViewController.m
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/12/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "collectionViewController.h"

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
    NSDictionary *bear = [NSDictionary dictionaryWithObjectsAndKeys: @"Bear", @"name",@"bear2", @"badge", nil];
    NSDictionary *crocodile = [NSDictionary dictionaryWithObjectsAndKeys: @"Crocodile", @"name",@"crocodile2", @"badge", nil];
    NSDictionary *elephant = [NSDictionary dictionaryWithObjectsAndKeys: @"Elephant", @"name",@"elephant2", @"badge", nil];
    NSDictionary *flamingo = [NSDictionary dictionaryWithObjectsAndKeys: @"Flamingo", @"name",@"flamingo2", @"badge", nil];
    NSDictionary *gorilla = [NSDictionary dictionaryWithObjectsAndKeys: @"Gorilla", @"name",@"gorilla2", @"badge", nil];
    NSDictionary *lion = [NSDictionary dictionaryWithObjectsAndKeys: @"Lion", @"name",@"lion2", @"badge", nil];
    NSDictionary *shark = [NSDictionary dictionaryWithObjectsAndKeys: @"Shark", @"name",@"shark2", @"badge", nil];
    NSDictionary *tiger = [NSDictionary dictionaryWithObjectsAndKeys: @"Tiger", @"name",@"tiger2", @"badge", nil];
    
    self.data = [@[bear, crocodile, elephant, flamingo, gorilla, lion, shark, tiger] mutableCopy];
    
    // Do any additional setup after loading the view.
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
