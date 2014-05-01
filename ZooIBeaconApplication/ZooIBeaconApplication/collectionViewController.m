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
    NSDictionary *bear = [NSDictionary dictionaryWithObjectsAndKeys: @"Bear", @"name",@"bear2", @"badge", @"bear", @"icon", @"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content", nil];
    NSDictionary *crocodile = [NSDictionary dictionaryWithObjectsAndKeys: @"Crocodile", @"name",@"crocodile2", @"badge", @"crocodile", @"icon",@"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content",nil];
    NSDictionary *elephant = [NSDictionary dictionaryWithObjectsAndKeys: @"Elephant", @"name",@"elephant2", @"badge", @"elephant", @"icon",@"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content",nil];
    NSDictionary *flamingo = [NSDictionary dictionaryWithObjectsAndKeys: @"Flamingo", @"name",@"flamingo2", @"badge", @"flamingo", @"icon",@"These long legged famous pink birds can be found in warm, watery regions of many continents and in our zoo! There are only six species of flamingo around the world and they are found from the Caribbean and South America to Africa, the Middle East and Europe. While the birds do fly, they are also surprisingly fluid swimmers.They have long, lean, curved necks with bent bills that allow them to feed on small organisms, like plankton, tiny fish, fly larvae and others. Their beak has a filter like structure allows them to remove food from the water without all the liquid. The shrimplike crustaceans are responsible for the pink color donned by the flamingo. Likely the only long legged pink birds in an any habitat, they are easily spotted--do you see them in our zoo?", @"content",nil];
    NSDictionary *gorilla = [NSDictionary dictionaryWithObjectsAndKeys: @"Gorilla", @"name",@"gorilla2", @"badge", @"gorilla", @"icon",@"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content",nil];
    NSDictionary *lion = [NSDictionary dictionaryWithObjectsAndKeys: @"Lion", @"name",@"lion2", @"badge", @"lion", @"icon",@"The most social of the big cats are the furry favorite, lions! Even though everyone recognizes lions from their gold shaggy manes, the length and color of their mane is believed to be determined by factors such as the age, genetics and hormones of lions. Young lions have light spotting on their coats that disappear as they grow older and adult lions range in color-from blond to reddish-brown and even black!  Growing to be as large as ten feet long and 550 pounds, lions primarily eat other large animals, like the zebra or wildebeest. When lions can’t find these animals, they also catch and feed on a variety of smaller animals from rodents to reptiles and sometimes other predators like hyenas and leopards. Here at the zoo, we feed the lions bones (usually a beef hind, shank, half femur or knuckle). Lions are listed as vulnerable on the World Conservation Unions’s Red List of Threatened Animals. In the wild they may only live to be 12-15 years, but zoo lions usually live to be 20 years old. Living in groups called prides, male lions hold onto to their pride no longer than two or three years before they are run off by fierce challengers. See if you are able to spot the lions in our exhibit! ", @"content",nil];
    NSDictionary *shark = [NSDictionary dictionaryWithObjectsAndKeys: @"Shark", @"name",@"shark2", @"badge", @"shark", @"icon",@"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content",nil];
    NSDictionary *tiger = [NSDictionary dictionaryWithObjectsAndKeys: @"Tiger", @"name",@"tiger2", @"badge", @"tiger", @"icon",@"Powerful hunters with sharp teeth and strong jaws, tigers are the largest members of the cat family. Weighing in anywhere from 165 to 350 pounds and from seven to 12 feet in length tigers are the largest land-living mammals whose diet consists entirely of meat. Tigers are dispersed across Asia and live in large areas with forest cover and water. Of the areas, tigers are classified into nine subspecies by scientists: Bali, Java, Caspian, Sumatran, Amur (or Siberian), Indian (or Bengal), South China, Malayan, and Indo-Chinese. The first three subspecies are extinct, however we hope to keep the others around! The closest relative to the tiger is the lion. In fact, without fur, it is difficult to distinguish a tiger from a lion. What makes the tiger so unique, though, is the striped fur! Look over at its coat; its covered with orange and black stripes will help you recognize a tiger anyday!", @"content",nil];
    
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
