//
//  ViewController.m
//  Buttons
//
//  Created by Protek 2 on 7/9/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import "ViewController.h"
#import "ViewTwoController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(id)sender {
    
    self.output=@"Button1";
    NSLog(@"%@",self.output);
    
}

- (IBAction)button2:(id)sender {
    
    self.output=@"Button2";
    
}

- (IBAction)button3:(id)sender {
    
    self.output=@"Button3";
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
     
ViewTwoController *dest= [segue destinationViewController];
     dest.input=self.output;
}

@end
