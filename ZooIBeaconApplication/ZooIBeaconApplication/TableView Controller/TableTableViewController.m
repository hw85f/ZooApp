//
//  TableTableViewController.m
//  ZooIBeaconApplication
//
//  Created by Haidong Wang on 4/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "TableTableViewController.h"
#import "ZOOTabBarViewController.h"

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
