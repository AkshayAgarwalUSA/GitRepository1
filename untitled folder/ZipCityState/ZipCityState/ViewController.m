//
//  ViewController.m
//  ZipCityState
//
//  Created by Protek 2 on 7/16/15.
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

- (IBAction)zipText:(UITextField *)sender {
    
    NSString *str=[NSString stringWithFormat:@"http://ZiptasticAPI.com/%@",sender.text];
    NSURL *url=[NSURL URLWithString:str];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if(data)
        {
            NSDictionary *response=[NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            self.cityText.text=response[@"city"];
        self.stateText.text=response[@"state"];
        }
    }];
    
    
}
@end
