//
//  AppDelegate.h
//  gpslocation
//
//  Created by Protek 2 on 7/20/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreLocation/CoreLocation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CLLocationManager *locationManager;


@end

