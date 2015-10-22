//
//  ViewController.m
//  WeatherApp
//
//  Created by Protek 2 on 7/17/15.
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

- (IBAction)search:(UIButton *)sender {
    
    NSString *str=[NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?zip=%@,us",_zipText.text];
    NSURL *url=[NSURL URLWithString:str];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if(data)
        {
            NSDictionary *response=[NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"%@",response[@"main"][@"temp"]);
            NSString *str1=[NSString stringWithFormat:@"%@",response[@"main"][@"temp"]];
            NSString *str2=[NSString stringWithFormat:@"%@",response[@"main"][@"pressure"]];
            NSString *str3=[NSString stringWithFormat:@"%@",response[@"main"][@"humidity"]];
            self.weather.text=str1;
            self.pressure.text=str2;
            self.humidity.text=str3;
            self.weatherdescription.text=response[@"weather"][0][@"main"];

        }
    }];
    
    
}



@end
