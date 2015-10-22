//
//  ViewTwoControllerViewController.m
//  Threebuttons
//
//  Created by Protek 2 on 7/9/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import "ViewTwoControllerViewController.h"

@interface ViewTwoControllerViewController ()

@end

@implementation ViewTwoControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text=self.input;
    // Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
