//
//  ViewController.m
//  Swapping
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
    
    NSString *number1=[NSString stringWithFormat: @"%@",self.A.text];
     
     NSLog(@"%@",number1);
    
    NSString *number2=[NSString stringWithFormat: @"%@",self.B.text];
     
     NSLog(@"%@",number2);
     
     NSString *number3=[NSString stringWithFormat: @"%@",self.C.text];
     
     NSLog(@"%@",number3);
    
    NSString *temp;
    temp=number1;
    //int val=[number1 intValue];
    number1=number3;
    number3=number2;
    number2=temp;
    
    
    NSLog(@"%@",number1);
    
    NSLog(@"%@",number2);
    
    NSLog(@"%@",number3);
    
    self.A.text= number1;
    self.B.text= number2;
    self.C.text= number3;
    
}




@end
