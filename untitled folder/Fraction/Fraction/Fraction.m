//
//  Fraction.m
//  Fraction
//
//  Created by Protek 2 on 7/6/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void)getFraction
{
    scanf("%i",&_num);
    scanf("%i",&_d);
    NSLog(@"%i/%i",_num,_d);
}

-(void)simplyfyFraction
{
    NSLog(@"%i/%i",_num/2,_d/2);
}

-(void)numberMultiply
{
    NSLog(@"%i/%i",_num*1,_d*2);
}

-(void)addAnotherFraction:(Fraction *) frac
{
    NSLog(@"%i/%i",frac.num,frac.d);
   int numerator=_d*frac.num+_num*frac.d;
    int denominator=_d+frac.d;
    NSLog(@"%i/%i",numerator,denominator);
}
@end
