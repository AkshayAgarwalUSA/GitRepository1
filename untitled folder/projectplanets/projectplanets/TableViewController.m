//
//  TableViewController.m
//  projectplanets
//
//  Created by Protek 2 on 7/13/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
{
    NSArray *image1;
    NSIndexPath *index;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    image1=@[@{@"description":@"closest to the sun...heavily cratered....looks like our moon...smallest planet in our solar system",@"Radius":@"4,878 km",@"Temperature":@"840 Fahrenheit",@"image":@"mercury.jpeg"},@{@"description":@"similar to Earth in size and mass...permanent blanket of clouds trap heat...surface temperature is hot enough to melt led....clouds filled with yellow sulfuric acid",@"Radius":@"12,104 km",@"Temperature":@"896 °F",@"image":@"venus.jpeg"},@{@"description":@"haven for life (things can live here because of liquid water and distance from sun...atmosphere is made of nitrogen and oxygen",@"Radius":@"2,756 km",@"Temperature":@"57 °F",@"image":@"earth.png"},@{@"description":@"atmosphere is thin...the Red planet...has canyons and riverbeds...scientists hypothesize that Mars onces had a wet, warm, Earth-like climate",@"Radius":@"6,794 km",@"Temperature":@"-81 °F",@"image":@"mars.jpeg"},@{@"description":@"great red spot which is a storm...largest planet...gas giant...no solid surface",@"Radius":@"142,984 km",@"Temperature":@"-202 °F",@"image":@"jupitor.jpeg"},@{@"description":@"eartly scientists thought it was the only plantet with rings...rings composed of rocks and dust..we now know Jupiter, Uranus, Saturn, and Neptune have rings",@"Radius":@"120,536 km",@"Temperature":@"-202 °F",@"image":@"saturn.png"},@{@"description":@"tilted almost flat on its axis....green blue in color...gas giant...named after the Greek god of the sky",@"Radius":@"51,118 km",@"Temperature":@"-328 °F",@"image":@"uranus.jpeg"},@{@"description":@"planet appears to be blue through a telescope...gas giant....stormiest planet",@"Radius":@"49,532 km",@"Temperature":@"-328 °F",@"image":@"neptune.jpeg"},@{@"description":@"Pluto is unlike other planets in many respects. It is smaller than Earth's moon. Its orbit carries it inside the orbit of Neptune and then way out beyond that orbit. From 1979 until early 1999, Pluto had actually been the eighth planet from the sun. Then, on Feb. 11, 1999, it crossed Neptune's path and once again became the solar system's most distant planet — until it was demoted to dwarf planet status. Pluto will stay beyond Neptune for 228 years. Pluto’s orbit is tilted to the main plane of the solar system — where the other planets orbit — by 17.1 degrees. It’s a cold, rocky world with only a very ephemeral atmosphere.",@"Radius":@"2,390 km",@"Temperature":@"-378 °F",@"image":@"pluto.jpeg"}];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 9;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    //image1=@[@{@"image":@"download.png"},@{@"image":@"download1.png"}];
    //cell.backgroundColor=[UIColor redColor];
    self.title=[NSString stringWithFormat:@" index section: %li row: %li",(long)indexPath.section,(long)indexPath.row];
    self.i=indexPath.row;
   // NSLog(@"%li",indexPath.row);
   // NSLog(@"%@",_output);
    switch(indexPath.row)
    {
        case 0:cell.backgroundColor=[UIColor redColor];
            cell.image=[UIImage imageNamed:@"mercury.jpeg"];
          //  self.i=indexPath.row;
           // NSLog(@"%li",_i);
            cell.textLabel.text=@"Mercury";
            break;
            
        case 1:cell.backgroundColor=[UIColor blueColor];
            cell.image=[UIImage imageNamed:@"venus.jpeg"];
            //self.row=indexPath;
          //  self.i=indexPath.row;
          //  NSLog(@"%li",_i);
            cell.textLabel.text=@"Venus";
            break;
            
        case 2:cell.backgroundColor=[UIColor greenColor];
            cell.image=[UIImage imageNamed:@"earth.png"];
            //self.row=indexPath;
          //  self.i=indexPath.row;
          //  NSLog(@"%li",_i);
            cell.textLabel.text=@"Earth";
            break;
            
        case 3:cell.backgroundColor=[UIColor yellowColor];
            cell.image=[UIImage imageNamed:@"mars.jpeg"];
            //self.row=indexPath;
          //  self.i=indexPath.row;
          //  NSLog(@"%li",_i);
            cell.textLabel.text=@"Mars";
            break;
            
        case 4:cell.backgroundColor=[UIColor blackColor];
            cell.image=[UIImage imageNamed:@"jupitor.jpeg"];
            //self.row=indexPath;
           // self.i=indexPath.row;
          //  NSLog(@"%li",_i);
            cell.textLabel.text=@"Jupitor";
            break;
            
        case 5:cell.backgroundColor=[UIColor orangeColor];
            cell.image=[UIImage imageNamed:@"saturn.png"];
          //  self.row=indexPath;
          //  self.i=indexPath.row;
        //    NSLog(@"%li",_i);
            cell.textLabel.text=@"Saturn";
            break;
            
        case 6:cell.backgroundColor=[UIColor brownColor];
            cell.image=[UIImage imageNamed:@"uranuas.jpeg"];
          //  self.row=indexPath;
         //  self.i=indexPath.row;
         //   NSLog(@"%li",_i);
            cell.textLabel.text=@"Uranus";
            break;
        case 7:cell.backgroundColor=[UIColor redColor];
            cell.image=[UIImage imageNamed:@"neptune.jpeg"];
            //  self.i=indexPath.row;
            // NSLog(@"%li",_i);
            cell.textLabel.text=@"Neptune";
            break;
        case 8:cell.backgroundColor=[UIColor redColor];
            cell.image=[UIImage imageNamed:@"pluto.jpeg"];
            //  self.i=indexPath.row;
            // NSLog(@"%li",_i);
            cell.textLabel.text=@"Pluto";
            break;
        
    }
    
    
    //cell.textLabel.text=self.title;
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //NSLog(@"%@",image1[0][@"image"]);
    // Get the new view
    ViewController *dest=[segue destinationViewController];
    //int row;
    index=[self.tableView indexPathForCell:sender];
    //NSLog(@"%ld",(long)index.row);
    self.output=[NSString stringWithFormat:@"%ld",(long)index.row];
    dest.input=[image1 objectAtIndex:index.row];
    //dest.input=_output;
        //NSLog(@"%@",dest.input);
    //NSLog(@"%i",i);
    
    
  //  NSLog(@"%@",_output);
    
    
    
    // Pass the selected object to the new view controller.
}

@end
