//
//  Fraction.h
//  Fraction
//
//  Created by Protek 2 on 7/6/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int num;
@property int d;

-(void)getFraction;
-(void)simplyfyFraction;
-(void)numberMultiply;
-(void)addAnotherFraction:(Fraction *) frac;
@end
