//
//  ViewController.m
//  MovieGrid
//
//  Created by Protek One on 10/29/15.
//  Copyright © 2015 Protek One. All rights reserved.
//
#import "ViewController.h"
#import "ServiceClass.h"
#import "Constants.h"
#import "UIColor+CustomColors.h"
#import "UIImageView+AFNetworking.h"
#import <QuartzCore/QuartzCore.h>
#import "ViewtwoController.h"


static NSString * const cellID = @"cellID";

@interface ViewController ()
{
    NSMutableArray *aImgPathsArray;
    UICollectionView *_collectionView;
    UICollectionViewFlowLayout *layout;
    
    NSMutableArray *resultArray;
    ViewtwoController *detail;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Now Playing";
    detail=[[ViewtwoController alloc]init];
    resultArray  = [NSMutableArray array];
    aImgPathsArray  = [NSMutableArray array];
    
    [[[ServiceClass alloc] init] getNow_Playing_Movies:^(NSDictionary *dictionary) {
        resultArray = dictionary[@"results"];
        [resultArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSDictionary *dict = obj;
            NSString *urlString =[NSString stringWithFormat:@"%@%@",IMG_URL,dict[@"poster_path"]];
            [aImgPathsArray addObject:urlString];
        }];
        
#pragma  Uicollectionview layout
        layout=[[UICollectionViewFlowLayout alloc] init];
        [self loadMovieGridView];

    }];
    
 }

#pragma mark Uicollectionview layout

-(void)loadMovieGridView{
    
    _collectionView=[[UICollectionView alloc] initWithFrame:CGRectMake(0, 62, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:layout];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellID];
    [_collectionView setAllowsMultipleSelection:YES];
    [_collectionView setBackgroundColor:[UIColor appBackgroundColor]];
    [_collectionView setDelegate:self];
    [_collectionView setDataSource:self];
    [_collectionView reloadData];
    [self.view addSubview:_collectionView];
    self.navigationItem.title=@"Latest Movies";
    //CGRect rect=CGRectMake(-4,0,50,50);
//UIButton *button=[[UIButton alloc]initWithFrame:rect];
   // [button setBackgroundImage:[UIImage imageNamed:@"person.png"] forState:UIControlStateNormal];
    self.navigationController.navigationBar.barTintColor=[UIColor grayColor];
    UIBarButtonItem *bar=[[UIBarButtonItem alloc]initWithCustomView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"person.png"]]];
    //UIBarButtonItem *bar=[[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.rightBarButtonItem=bar;
    self.navigationItem.rightBarButtonItem.title=@"title";
    //[bar initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    //[bar setWidth:10];
}
-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    _collectionView.contentInset = UIEdgeInsetsMake(2, 2, 60, 2);
}
#pragma mark UicollectionView Delegates
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [aImgPathsArray count];
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
#pragma LOADING IMAGES IN COLLECTIONVIEW
    
    UIImageView *recipeImageView = [[UIImageView alloc]init];
    //UIGestureRecognizer *tapGesture=[[UIGestureRecognizer alloc]initWithTarget:nil action:@selector(touched)];
        //tapGesture.numberOfTouches=1;
    recipeImageView.userInteractionEnabled = YES;
    recipeImageView.frame=CGRectMake(0, 0, self.view.frame.size.width/2-6, 250);
    recipeImageView.tag = indexPath.row;
    NSString  *escapedDataString = [[NSString stringWithFormat:@"%@",[aImgPathsArray objectAtIndex:indexPath.row]] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURLRequest  *request = [NSURLRequest requestWithURL:[NSURL URLWithString:escapedDataString]];
    [recipeImageView setImageWithURLRequest:request placeholderImage:[UIImage imageNamed:@"details_placeholder.png"] success:^(NSURLRequest  *request, NSHTTPURLResponse  *response, UIImage  *image)
     {
         recipeImageView.image = image;
         recipeImageView.layer.borderWidth = 1.0;
         recipeImageView.layer.cornerRadius = 10.0;
         recipeImageView.clipsToBounds = YES;
         recipeImageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
     } failure:^(NSURLRequest * request, NSHTTPURLResponse  *response, NSError  *error) {
     }];
    
    [cell addSubview:recipeImageView];
    
        if(aImgPathsArray. count - 1 == indexPath.row) {
            NSInteger aValue = aImgPathsArray. count/20+1;
            NSString *num = [NSString stringWithFormat:@"%ld",(long)aValue];
            [self aLoadMoreDataWithPageNumber:num];
            [self loadingCellForIndexPath:indexPath];
        }
    [[cell viewWithTag:indexPath.row] setAlpha:1.0];

    
    return cell;
}

- (UICollectionViewCell *)loadingCellForIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = (UICollectionViewCell *)[_collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc]
                                                  initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activityIndicator.center = cell.center;
    [cell addSubview:activityIndicator];
    [activityIndicator startAnimating];
    
    return cell;
}

#pragma mark Collection view layout things
// Layout: Set cell size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGSize mElementSize;
    mElementSize = CGSizeMake(self.view.frame.size.width/2-6, 250);
    return mElementSize;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 6.0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 8.0;
}

// Layout: Set Edges
- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(5,1,5,1);
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"row :%ld",(long)indexPath.row);
    [self presentViewController:detail animated:YES completion:NULL];
    self.image=[aImgPathsArray objectAtIndex:indexPath.row];
}

#pragma mark Load more data
-(void)aLoadMoreDataWithPageNumber:(NSString*)pageNumber{
    NSLog(@"pageNumber :%@",pageNumber);
    double delayInSeconds = 1.5;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){

    [[[ServiceClass alloc] init] getNow_Playing_MoviesWithPagenumber:pageNumber completion:^(NSDictionary *dictionary) {
       NSArray* resultArray2 = dictionary[@"results"];
        [resultArray2 enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSDictionary *dict = obj;
            NSString *urlString =[NSString stringWithFormat:@"%@%@",IMG_URL,dict[@"poster_path"]];
            [aImgPathsArray addObject:urlString];
        }];
        [_collectionView reloadData];
        
      //  NSLog(@"count :%ld",(long)resultArray.count);
    }];
    });

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    detail=[segue destinationViewController];
    detail.input=self.image;
    // Pass the selected object to the new view controller.
}

@end
