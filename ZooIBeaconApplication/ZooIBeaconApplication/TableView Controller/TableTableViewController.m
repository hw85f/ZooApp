//
//  TableTableViewController.m
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "TableTableViewController.h"

@interface TableTableViewController ()

@end

@implementation TableTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(UIStatusBarStyle)preferredStatusBarStyle{  return UIStatusBarStyleLightContent;  }


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    NSDictionary *bear = [NSDictionary dictionaryWithObjectsAndKeys: @"Bear", @"name",@"bear2", @"badge", @"bear", @"icon", @"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content", nil];
    NSDictionary *crocodile = [NSDictionary dictionaryWithObjectsAndKeys: @"Crocodile", @"name",@"crocodile2", @"badge", @"crocodile", @"icon",@"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content",nil];
    NSDictionary *elephant = [NSDictionary dictionaryWithObjectsAndKeys: @"Elephant", @"name",@"elephant2", @"badge", @"elephant", @"icon",@"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content",nil];
    NSDictionary *flamingo = [NSDictionary dictionaryWithObjectsAndKeys: @"Flamingo", @"name",@"flamingo2", @"badge", @"flamingo", @"icon",@"These long legged famous pink birds can be found in warm, watery regions of many continents and in our zoo! There are only six species of flamingo around the world and they are found from the Caribbean and South America to Africa, the Middle East and Europe. While the birds do fly, they are also surprisingly fluid swimmers.They have long, lean, curved necks with bent bills that allow them to feed on small organisms, like plankton, tiny fish, fly larvae and others. Their beak has a filter like structure allows them to remove food from the water without all the liquid. The shrimplike crustaceans are responsible for the pink color donned by the flamingo. Likely the only long legged pink birds in an any habitat, they are easily spotted--do you see them in our zoo?", @"content",nil];
    NSDictionary *gorilla = [NSDictionary dictionaryWithObjectsAndKeys: @"Gorilla", @"name",@"gorilla2", @"badge", @"gorilla", @"icon",@"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content",nil];
    NSDictionary *lion = [NSDictionary dictionaryWithObjectsAndKeys: @"Lion", @"name",@"lion2", @"badge", @"lion", @"icon",@"The most social of the big cats are the furry favorite, lions! Even though everyone recognizes lions from their gold shaggy manes, the length and color of their mane is believed to be determined by factors such as the age, genetics and hormones of lions. Young lions have light spotting on their coats that disappear as they grow older and adult lions range in color-from blond to reddish-brown and even black!  Growing to be as large as ten feet long and 550 pounds, lions primarily eat other large animals, like the zebra or wildebeest. When lions can’t find these animals, they also catch and feed on a variety of smaller animals from rodents to reptiles and sometimes other predators like hyenas and leopards. Here at the zoo, we feed the lions bones (usually a beef hind, shank, half femur or knuckle). Lions are listed as vulnerable on the World Conservation Unions’s Red List of Threatened Animals. In the wild they may only live to be 12-15 years, but zoo lions usually live to be 20 years old. Living in groups called prides, male lions hold onto to their pride no longer than two or three years before they are run off by fierce challengers. See if you are able to spot the lions in our exhibit! ", @"content",nil];
    NSDictionary *shark = [NSDictionary dictionaryWithObjectsAndKeys: @"Shark", @"name",@"shark2", @"badge", @"shark", @"icon",@"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants! Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears! You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content",nil];
    NSDictionary *tiger = [NSDictionary dictionaryWithObjectsAndKeys: @"Tiger", @"name",@"tiger2", @"badge", @"tiger", @"icon",@"Powerful hunters with sharp teeth and strong jaws, tigers are the largest members of the cat family. Weighing in anywhere from 165 to 350 pounds and from seven to 12 feet in length tigers are the largest land-living mammals whose diet consists entirely of meat. Tigers are dispersed across Asia and live in large areas with forest cover and water. Of the areas, tigers are classified into nine subspecies by scientists: Bali, Java, Caspian, Sumatran, Amur (or Siberian), Indian (or Bengal), South China, Malayan, and Indo-Chinese. The first three subspecies are extinct, however we hope to keep the others around! The closest relative to the tiger is the lion. In fact, without fur, it is difficult to distinguish a tiger from a lion. What makes the tiger so unique, though, is the striped fur! Look over at its coat; its covered with orange and black stripes will help you recognize a tiger anyday!", @"content",nil];
    
    

    
    self.data = [@[bear, crocodile, elephant, flamingo, gorilla, lion, shark, tiger] mutableCopy];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [[self.data objectAtIndex:indexPath.row] objectForKey:@"name"];
    cell.imageView.image = [UIImage imageNamed: [[self.data objectAtIndex:indexPath.row] objectForKey:@"icon"]];
    // Configure the cell...
    
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"showDetails"]) {
        AnimalDetailsViewController *detailviewcontroller = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        NSInteger row = [myIndexPath row];
        
        detailviewcontroller.animal = [self.data objectAtIndex:row];
    }
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
