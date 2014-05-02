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
    NSDictionary *bear = [NSDictionary dictionaryWithObjectsAndKeys: @"Bear", @"name",@"bear2", @"badge", @"bear", @"icon", @"Known for their large bodies, stocky legs, long snouts and shaggy hair, bears are large mammals found around the world. Divided amongst several species, most bears make the most of their environment and are largely omnivorous. ", @"content1",@"Bears, while often depicted in groups, are typically solitary animals. They tend to be active during the night or twilight and do much of their hunting and activity then. Bears possess an excellent sense of smell, and despite their large build, are adept runners, climbers, and swimmers.",@"content2",@"You will often find bears in their dens, hidden in caves and burrows. During the winters, bears fall into a long period of sleep that resembles hibernation for up to 100 days! This allows the bears to work on the metabolic process and adjust their bodies to the changing environments.",@"content3",@"BearIMG1", @"image1", @"BearIMG2", @"image2",@"BearIMG3", @"image3", nil];
    NSDictionary *crocodile = [NSDictionary dictionaryWithObjectsAndKeys: @"Crocodile", @"name",@"crocodile2", @"badge", @"crocodile", @"icon",@"Derived from the greek word “crocodilos,” meaning “lizard,” crocodiles are large aquatic reptiles. While they are often confused with the alligator, crocodiles are distinct in nature. The most obvious external differences are visible in the head with crocodiles, which are narrower and longer, and a more V-shaped than a U-shaped snout compared to that of alligators.  There are several other differences between the two--see if you can spot them! ", @"content1",@"You can find crocodiles all around the world in the tropics of Africa, Asia, Australia and the Americas. They live in habitats that consist of large shallow bodies of freshwater or saltwater. Crocodiles prefer warm, tropical regions and tend to hibernate in extreme weather.",@"content2",@"The physical traits of crocodiles make them excellent predators. Its streamlined body allows it to swiftly swim through waters, tucking in its webbed feet when need be. Though size greatly varies between species of crocodiles, many grow to be anywhere from 17-23 feet! ",@"content3",@"CrocodileIMG1", @"image1", @"CrocodileIMG2", @"image2",@"CrocodileIMG3", @"image3",nil];
    NSDictionary *elephant = [NSDictionary dictionaryWithObjectsAndKeys: @"Elephant", @"name",@"elephant2", @"badge", @"elephant", @"icon", @"The largest land animals on Earth are known for their big ears and long trunks. But there is so much more to love about elephants!", @"content1", @"Starting out small at about 3 feet and 200 pounds, elephants grow into their features to upwards of 6-13 feet and 5,000-14,000 pounds. Their trunk is used to smell, breathe, get them food, drink, and send out loud trumpet noises. Their floppy ears also act like a cooling system through all the veins. If you look closely, you'll actually see loads of tiny veins on those big ears!",@"content2", @"You'll also see our elephants are surrounded by plants. Thats because they are herbivores, living off of bark, grasses, fruits and roots. In one day alone, an adult elephant can consume up to 300 pounds of food in one day! Multiple that for the average lifespan of an elephant and you are looking at 60-70 years worth of this much food!", @"content3",@"elephantIMG1", @"image1", @"elephantIMG2", @"image2",@"elephantIMG3", @"image3",nil];
    
    NSDictionary *flamingo = [NSDictionary dictionaryWithObjectsAndKeys: @"Flamingo", @"name",@"flamingo2", @"badge", @"flamingo", @"icon",@"These long legged famous pink birds can be found in warm, watery regions of many continents and in our zoo! There are only six species of flamingo around the world and they are found from the Caribbean and South America to Africa, the Middle East and Europe.", @"content1", @"While the birds do fly, they are also surprisingly fluid swimmers.They have long, lean, curved necks with bent bills that allow them to feed on small organisms, like plankton, tiny fish, fly larvae and others. Their beak has a filter like structure allows them to remove food from the water without all the liquid.",@"content2", @"The shrimplike crustaceans are responsible for the pink color donned by the flamingo. Likely the only long legged pink birds in an any habitat, they are easily spotted--do you see them in our zoo?", @"content3",@"FlamingoIMG1", @"image1", @"FlamingoIMG2", @"image2",@"FlamingoIMG3", @"image3",nil];
    NSDictionary *gorilla = [NSDictionary dictionaryWithObjectsAndKeys: @"Gorilla", @"name",@"gorilla2", @"badge", @"gorilla", @"icon",@"Charismatic and intelligent, gorillas are known for their many human-like behaviors and emotions. They make their own tools to help them survive in the forest and shelter themselves in times of need. If you look closely, you’ll even be able to tell whether gorilla’s are happy, laughing or sad because of their behaviors.", @"content1",@"What’s crazier is that gorillas actually share 98.3% of their genetic code with humans, making them our closest cousins after chimpanzees and bonobos! The largest of the great apes, gorillas are stocky animals with broad chests and shoulders, large, human-like hands and small eyes set into hairless faces. While they are ground dwelling, gorillas can climb trees and build homes at higher altitudes. ",@"content2",@"They live in family groups of 5-10 but sometimes can even range from two to more than 50! All these families are led by a dominant male (alpha male) who holds his position for years. The alpha male organizes activities for eating, nesting and moving around the home range. Look around to see if you can spot the alpha male!",@"content3",@"GorillaIMG1", @"image1", @"GorillaIMG2", @"image2",@"GorillaIMG3", @"image3",nil];
    NSDictionary *lion = [NSDictionary dictionaryWithObjectsAndKeys: @"Lion", @"name",@"lion2", @"badge", @"lion", @"icon",@"The most social of the big cats are the furry favorite, lions! Even though everyone recognizes lions from their gold shaggy manes, the length and color of their mane is believed to be determined by factors such as the age, genetics and hormones of lions. Young lions have light spotting on their coats that disappear as they grow older and adult lions range in color-from blond to reddish-brown and even black!", @"content1",@"Growing to be as large as ten feet long and 550 pounds, lions primarily eat other large animals, like the zebra or wildebeest. When lions can’t find these animals, they also catch and feed on a variety of smaller animals from rodents to reptiles and sometimes other predators like hyenas and leopards. Here at the zoo, we feed the lions bones (usually a beef hind, shank, half femur or knuckle). ",@"content2",@"Lions are listed as vulnerable on the World Conservation Unions’s Red List of Threatened Animals. In the wild they may only live to be 12-15 years, but zoo lions usually live to be 20 years old. Living in groups called prides, male lions hold onto to their pride no longer than two or three years before they are run off by fierce challengers. See if you are able to spot the lions in our exhibit!",@"content3",@"LionIMG1", @"image1", @"LionIMG2", @"image2",@"LionIMG3", @"image3",nil];
    NSDictionary *shark = [NSDictionary dictionaryWithObjectsAndKeys: @"Shark", @"name",@"shark2", @"badge", @"shark", @"icon",@"While sharks have a reputation for being destructive, their is much more to the shark than just that.Their are many types of sharks and actual number of shark attacks is much lower than what one may imagine. ", @"content1",@"Sharks have no bones in their bodies-instead their skeleton is made up of cartilage. This is the same type of tough, flexible tissue that makes up our ears and noses! Some sharks remain on the move for an entire lifetime, forcing water over their gills and delivering oxygen to the blood stream. These sharks must always remain on the move otherwise they may suffocate. ",@"content2",@"Great white sharks are the largest predatory fish on worth, growing to be an average of 15 feet in length to exceeding 20 feet! Their slate gray upper bodies allow them to blend in with the rocky coastal sea floor. Most sharks are found in cool, coastal waters throghout the world. See if you are able to spot our shark in the waters!",@"content3",@"SharkIMG1", @"image1", @"SharkIMG2", @"image2",@"SharkIMG3", @"image3",nil];
    NSDictionary *tiger = [NSDictionary dictionaryWithObjectsAndKeys: @"Tiger", @"name",@"tiger2", @"badge", @"tiger", @"icon",@"Powerful hunters with sharp teeth and strong jaws, tigers are the largest members of the cat family. Weighing in anywhere from 165 to 350 pounds and from seven to 12 feet in length tigers are the largest land-living mammals whose diet consists entirely of meat. ", @"content1",@"Tigers are dispersed across Asia and live in large areas with forest cover and water. Of the areas, tigers are classified into nine subspecies by scientists: Bali, Java, Caspian, Sumatran, Amur (or Siberian), Indian (or Bengal), South China, Malayan, and Indo-Chinese. The first three subspecies are extinct, however we hope to keep the others around!",@"content2",@"The closest relative to the tiger is the lion. In fact, without fur, it is difficult to distinguish a tiger from a lion. What makes the tiger so unique, though, is the striped fur! Look over at its coat; its covered with orange and black stripes will help you recognize a tiger anyday! ",@"content3",@"TigerIMG1", @"image1", @"TigerIMG2", @"image2",@"TigerIMG3", @"image3",nil];
    
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
