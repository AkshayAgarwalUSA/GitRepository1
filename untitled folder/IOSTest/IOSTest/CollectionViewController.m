//
//  CollectionViewController.m
//  IOSTest
//
//  Created by Protek 2 on 7/29/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import "CollectionViewController.h"
#import "ViewController.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor=[UIColor redColor];

    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    //UICollectionViewScrollDirectionVertical *e=[UICollectionViewScrollDirectionVertical ]
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController *ob=[segue destinationViewController];
    
    
    // Pass the selected object to the new view controller.
}*/


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 48;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    //cell.backgroundColor=[UIColor greenColor];
    CGRect rect=CGRectMake(0,0,50,50);
    UIImageView *imgview=[[UIImageView alloc]initWithFrame:rect];
    [cell.contentView addSubview:imgview];
    imgview.backgroundColor=[UIColor whiteColor];
    NSString *str=[NSString stringWithFormat:@"http://pugme.herokuapp.com/bomb?count=50"];
    NSURL *url=[NSURL URLWithString:str];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if(data)
        {
            NSDictionary *response=[NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
           
            NSURL *url1 = [NSURL URLWithString:response[@"pugs"][0]];
            NSData *data = [[NSData alloc] initWithContentsOfURL:url1];
            UIImage *image = [UIImage imageWithData:data];
            imgview.image=image;
        }
    }];
    
   // imgview.backgroundColor=[UIColor whiteColor];
    //cell.imageView.image=[UIImage imageNamed:@"download.png"];

    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}*/


/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
