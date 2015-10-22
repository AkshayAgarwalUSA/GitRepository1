//
//  ViewController1.m
//  InstagramApp
//
//  Created by Protek 2 on 8/4/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.output.image=self.image1;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Filter1:(id)sender {
    
    self.output.image=self.image1;
    UIImage *chosenImage = self.output.image;
    CIImage *img=[CIImage imageWithData:UIImagePNGRepresentation(chosenImage)];
    CIFilter *filter=[CIFilter filterWithName:@"CIPhotoEffectNoir" keysAndValues:kCIInputImageKey,img, nil];
    CIImage *outputimg=[filter outputImage];
    self.output.image=[UIImage imageWithCIImage:outputimg];
}

- (IBAction)Filter2:(id)sender {
    
    self.output.image=self.image1;
    UIImage *chosenImage = self.output.image;
    CIImage *img=[CIImage imageWithData:UIImagePNGRepresentation(chosenImage)];
    CIFilter *filter=[CIFilter filterWithName:@"CIPhotoEffectTonal" keysAndValues:kCIInputImageKey,img, nil];
    CIImage *outputimg=[filter outputImage];
    self.output.image=[UIImage imageWithCIImage:outputimg];
    
}

- (IBAction)Filter3:(id)sender {
    
    self.output.image=self.image1;
    UIImage *chosenImage = self.output.image;
    CIImage *img=[CIImage imageWithData:UIImagePNGRepresentation(chosenImage)];
    CIFilter *filter=[CIFilter filterWithName:@"CISepiaTone" keysAndValues:kCIInputImageKey,img, nil];
    CIImage *outputimg=[filter outputImage];
    self.output.image=[UIImage imageWithCIImage:outputimg];
}

- (IBAction)savephoto:(id)sender {
    
    UIImageWriteToSavedPhotosAlbum(self.output.image, self, nil, nil);
}
@end
