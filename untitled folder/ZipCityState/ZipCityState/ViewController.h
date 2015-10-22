//
//  ViewController.h
//  ZipCityState
//
//  Created by Protek 2 on 7/16/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)zipText:(UITextField *)sender;

@property (weak, nonatomic) IBOutlet UITextField *cityText;

@property (weak, nonatomic) IBOutlet UITextField *stateText;


@end

