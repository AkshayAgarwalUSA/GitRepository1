//
//  main.m
//  TestbyClient1
//
//  Created by Protek 2 on 10/21/15.
//  Copyright © 2015 Protek 2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FUNCTIONS.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        FUNCTIONS *func=[[FUNCTIONS alloc]init];
        //PROGRAM 1
        [func prog1];
        
        //PROGRAM 2
        [func prog2];
        
        //PROGRAM 3
        [func prog3];
        
        //PROGRAM 4
        
        //NON-RECURSSIVE
        int number;
        scanf("%d",&number);
        double result;
        result=[func factorial:number];
        NSLog(@"%f", result);
        
        //RECURSSIVE
        result=[func fact:number];
        NSLog(@"%f", result);
    }
    return 0;
}
