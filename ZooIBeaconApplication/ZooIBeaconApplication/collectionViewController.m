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
    NSDictionary *One = [NSDictionary dictionaryWithObjectsAndKeys: @"Elephant", @"name", @"icon-map-30x30.png", @"image",nil];
    NSDictionary *Two = [NSDictionary dictionaryWithObjectsAndKeys: @"Rhinoceros", @"name", @"icon-map-30x30.png", @"image", nil];
    NSDictionary *Three = [NSDictionary dictionaryWithObjectsAndKeys: @"Panda", @"name", @"icon-map-30x30.png", @"image",nil];
    NSDictionary *Four = [NSDictionary dictionaryWithObjectsAndKeys: @"Tiger", @"name", @"icon-map-30x30.png", @"image",nil];
    
    self.data = [@[One, Two, Three, Four] mutableCopy];
    
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
    myCell.image.image = [UIImage imageNamed: [[_data objectAtIndex:indexPath.row] objectForKey:@"image"]];
    
    return myCell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Show"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        AnimalDetailsViewController *detailviewcontroller = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        detailviewcontroller.test = [[_data objectAtIndex:[indexPath row]] objectForKey:@"name"];
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
