//
//  ViewController.m
//  StringAddition
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
    
    NSString *number1=[NSString stringWithFormat: @"%@",self.string1.text];
    
    NSLog(@"%@",number1);
    
    NSString *number2=[NSString stringWithFormat: @"%@",self.string2.text];
    
    NSLog(@"%@",number2);
    
   number1 = [number1 stringByAppendingString: number2];
    
   // NSString *res=[[NSString alloc] initWithFormat: @"%@",number1];
    
    self.result.text=number1;
    
    
}

@end
