//
//  UIColor+CustomColors.m
//  MovieGrid
//
//  Created by Protek One on 10/29/15.
//  Copyright © 2015 Protek One. All rights reserved.
//


#import "UIColor+CustomColors.h"

@implementation UIColor (CustomColors)

+(UIColor *) themeColor {
//    return [UIColor colorWithRed:245.0/255.0 green:220.0/255.0 blue:80.0/255.0 alpha:1.0];
//    return [UIColor colorWithRed:46.0/255.0 green:184.0/255.0 blue:196.0/255.0 alpha:1.0];
    return [UIColor colorFromHexString:@"#4AC0D1"];
}

+(UIColor *) lightGrayBackgroundColor {
    return [UIColor colorWithRed:240.0/255.0 green:243.0/255.0 blue:246.0/255.0 alpha:1];
}

+(UIColor *) grayFontColor {
    return [UIColor colorWithRed:102.0/255.0 green:102.0/255.0 blue:102.0/255.0 alpha:1];
}

+(UIColor *) borderColor {
    return [UIColor colorWithRed:233.0/255.0 green:233.0/255.0 blue:233.0/255.0 alpha:1];
}

+(UIColor *) discoverPageButtonBackgroundColor {
    return [UIColor colorWithRed:250.0/255.0 green:250.0/255.0 blue:250.0/255.0 alpha:1];
}

//#d3d3d3
+(UIColor *) customLightGrayColor {
    return [UIColor colorWithRed:211.0/255.0 green:211.0/255.0 blue:211.0/255.0 alpha:1];
}

+(UIColor *) appBackgroundColor {
    return [UIColor colorWithRed:239.0 / 255.0 green:235.0 / 255.0 blue:233.0 / 255.0 alpha:1.0];
}

+(UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

-(UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}


+(UIColor *) selectedGrayColor {
    return [UIColor colorWithRed:221.0/255.0 green:221.0/255.0 blue:221.0/255.0 alpha:1.0];
}

@end
