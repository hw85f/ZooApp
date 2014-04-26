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
    [self.myScrollView setContentSize:CGSizeMake(300, 915)];
    [self.content setScrollEnabled:NO];
    
    self.content.text = @"Animals are multicellular, eukaryotic organisms of the kingdom Animalia (also called Metazoa). Their body plan eventually becomes fixed as they develop, although some undergo a process of metamorphosis later on in their lives. Most animals are motile, meaning they can move spontaneously and independently. All animals must ingest other organisms or their products for sustenance (see Heterotroph).Most known animal phyla appeared in the fossil record as marine species during the Cambrian explosion, about 542 million years ago. Animals are divided into various sub-groups, some of which are: vertebrates (birds, mammals, amphibians, reptiles, fish); mollusks (clams, oysters, octopuses, squid, snails); arthropods (millipedes, centipedes, insects, spiders, scorpions, crabs, lobsters, shrimp); annelids (earthworms, leeches); sponges; and jellyfish.Animals are multicellular, eukaryotic organisms of the kingdom Animalia (also called Metazoa). Their body plan eventually becomes fixed as they develop, although some undergo a process of metamorphosis later on in their lives. Most animals are motile, meaning they can move spontaneously and independently. All animals must ingest other organisms or their products for sustenance (see Heterotroph).Most known animal phyla appeared in the fossil record as marine species during the Cambrian explosion, about 542 million years ago. Animals are divided into various sub-groups, some of which are: vertebrates (birds, mammals, amphibians, reptiles, fish); mollusks (clams, oysters, octopuses, squid, snails); arthropods (millipedes, centipedes, insects, spiders, scorpions, crabs, lobsters, shrimp); annelids (earthworms, leeches); sponges; and jellyfish.";
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
