//
//  main.m
//  XYPoint
//
//  Created by Protek 2 on 7/6/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        
        XYPoint *o=[[XYPoint alloc] init];
        [o GetX];
        [o GetY];
        [o ShowXY];
    }
    return 0;
}
