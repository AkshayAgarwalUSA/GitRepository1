//
//  ViewController.h
//  WeatherApp
//
//  Created by Protek 2 on 7/17/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *zipText;

@property (weak, nonatomic) IBOutlet UILabel *weather;

@property (weak, nonatomic) IBOutlet UILabel *pressure;

@property (weak, nonatomic) IBOutlet UILabel *humidity;

@property (weak, nonatomic) IBOutlet UILabel *weatherdescription;


@end

