//
//  AppDelegate.h
//  notificationLocal
//
//  Created by Protek 2 on 7/21/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic, copy) NSDate *fireDate;

@property(nonatomic, copy) NSString *alertAction;

@end

