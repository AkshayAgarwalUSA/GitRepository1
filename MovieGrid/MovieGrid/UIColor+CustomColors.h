//
//  UIColor+CustomColors.h
//  MovieGrid
//
//  Created by Protek One on 10/29/15.
//  Copyright © 2015 Protek One. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CustomColors)

+(UIColor *) themeColor;
+(UIColor *) lightGrayBackgroundColor;
+(UIColor *) grayFontColor;
+(UIColor *) borderColor;
+(UIColor *) discoverPageButtonBackgroundColor;
+(UIColor *) customLightGrayColor;
+(UIColor *) appBackgroundColor;
+(UIColor *) selectedGrayColor;


/**
 *  Assumes input like "#00FF00" (#RRGGBB)
 */
+(UIColor *)colorFromHexString:(NSString *)hexString;

@end