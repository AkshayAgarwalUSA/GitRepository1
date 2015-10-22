//
//  ViewController1.h
//  InstagramApp
//
//  Created by Protek 2 on 8/4/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController1 : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *output;

@property UIImage *image1;

- (IBAction)Filter1:(id)sender;

- (IBAction)Filter2:(id)sender;

- (IBAction)Filter3:(id)sender;

- (IBAction)savephoto:(id)sender;


@end
