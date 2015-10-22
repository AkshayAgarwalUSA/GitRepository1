//
//  TableViewController.h
//  projectplanets
//
//  Created by Protek 2 on 7/13/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@property NSString *output;

@property long i;

@property (weak, nonatomic) IBOutlet UITableViewCell *row;
@end
