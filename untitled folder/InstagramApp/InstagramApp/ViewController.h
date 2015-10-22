//
//  ViewController.h
//  InstagramApp
//
//  Created by Protek 2 on 8/3/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

- (IBAction)imagecamera:(id)sender;

- (IBAction)Existinglibrary:(id)sender;


@property (weak, nonatomic) IBOutlet UIImageView *cameraoutput;

@property UIImage *input;


@end

