//
//  ViewtwoController.m
//  MovieGrid
//
//  Created by Protek 2 on 10/29/15.
//  Copyright © 2015 Protek One. All rights reserved.
//

#import "ViewtwoController.h"

@interface ViewtwoController ()

@end

@implementation ViewtwoController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.detailpic=[[UIImageView alloc]initWithFrame:CGRectMake(20,80,self.view.frame.size.width/2-6,250)];
    [self.view addSubview:self.detailpic];
    //self.detailpic.backgroundColor=[UIColor redColor];
    self.view.backgroundColor=[UIColor whiteColor];
    self.detailpic.image=self.input;
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
