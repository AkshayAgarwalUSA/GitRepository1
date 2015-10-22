//
//  main.m
//  Fraction
//
//  Created by Protek 2 on 7/6/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
   Fraction *a=[[Fraction alloc] init];
        Fraction *frac2=[[Fraction alloc] init];
        [a getFraction];
        [frac2 getFraction];
        //[a simplyfyFraction];
        //[a numberMultiply];
        [a addAnotherFraction:frac2];
    }
    return 0;
}
