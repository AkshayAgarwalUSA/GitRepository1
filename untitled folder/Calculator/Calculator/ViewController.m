//
//  ViewController.m
//  Calculator
//
//  Created by Protek 2 on 7/8/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)button:(id)sender {
    NSString *argument1=[NSString stringWithFormat: @"%@",self.text1.text];
    
    
    NSLog(@"%@",argument1);
    NSString *argument2=[NSString stringWithFormat: @"%@",self.text2.text];
   NSLog(@"%@",argument2);
    
    int val1=[argument1 intValue];
    int val2=[argument2 intValue];
    
    NSLog(@"%i",val1);
    NSLog(@"%i",val2);
    
    int add=val1+val2;
    
    NSLog(@"%i",add);
    
    NSString *show1=[[NSString alloc] initWithFormat: @"%i",add];
    
    self.result.text=show1;
}

- (IBAction)button2:(id)sender {
    
    NSString *argument1=[NSString stringWithFormat: @"%@",self.text1.text];
    
    
    NSLog(@"%@",argument1);
    NSString *argument2=[NSString stringWithFormat: @"%@",self.text2.text];
    NSLog(@"%@",argument2);
    
    int val1=[argument1 intValue];
    int val2=[argument2 intValue];
    
    NSLog(@"%i",val1);
    NSLog(@"%i",val2);
    
    int add=val1-val2;
    
    NSLog(@"%i",add);
    
    NSString *show1=[[NSString alloc] initWithFormat: @"%i",add];
    
    self.result.text=show1;
}

- (IBAction)button3:(id)sender {
    
    NSString *argument1=[NSString stringWithFormat: @"%@",self.text1.text];
    
    
    NSLog(@"%@",argument1);
    NSString *argument2=[NSString stringWithFormat: @"%@",self.text2.text];
    NSLog(@"%@",argument2);
    
    int val1=[argument1 intValue];
    int val2=[argument2 intValue];
    
    NSLog(@"%i",val1);
    NSLog(@"%i",val2);
    
    int add=val1*val2;
    
    NSLog(@"%i",add);
    
    NSString *show1=[[NSString alloc] initWithFormat: @"%i",add];
    
    self.result.text=show1;
}

- (IBAction)button4:(id)sender {
    
    NSString *argument1=[NSString stringWithFormat: @"%@",self.text1.text];
    
    
    NSLog(@"%@",argument1);
    NSString *argument2=[NSString stringWithFormat: @"%@",self.text2.text];
    NSLog(@"%@",argument2);
    
    int val1=[argument1 intValue];
    int val2=[argument2 intValue];
    
    NSLog(@"%i",val1);
    NSLog(@"%i",val2);
    
    int add=val1/val2;
    
    NSLog(@"%i",add);
    
    NSString *show1=[[NSString alloc] initWithFormat: @"%i",add];
    
    self.result.text=show1;
}

@end
