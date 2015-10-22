//
//  Factory.m
//  PiratesProject
//
//  Created by Protek 2 on 7/16/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import "Factory.h"

@interface Factory ()

@end

@implementation Factory

- (void)viewDidLoad {
    [super viewDidLoad];
    _Col1Array=@[@"Tile 1",@"Tile 2",@"Tile 3"];
    _Col2Array=@[@"Tile 4",@"Tile 5",@"Tile 6"];
    _Col3Array=@[@"Tile 7",@"Tile 8",@"Tile 9"];
    _Col4Array=@[@"Tile 10",@"Tile 11",@"Tile 12"];
    _tileArray=@[_Col1Array,_Col2Array,_Col3Array,_Col4Array];
    
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
