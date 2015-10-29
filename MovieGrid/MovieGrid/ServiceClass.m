//
//  ServiceClass.m
//  MovieGrid
//
//  Created by Protek One on 10/29/15.
//  Copyright © 2015 Protek One. All rights reserved.
//


#import "ServiceClass.h"
#import "Constants.h"
#import <AFNetworking/AFNetworking.h>


@implementation ServiceClass

#pragma mark Now playing movies api Call

-(void) getNow_Playing_Movies:(receivedDictionary) completionBlock
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [manager GET:[NSString stringWithFormat:@"%@", WEB_DOMAIN] parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
       // NSDictionary *dataDictionary = [[NSDictionary alloc] init];
        
        if (completionBlock) {
            completionBlock(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        if (error.code == NSURLErrorTimedOut) {
            NSLog(@"Get Cart TIME OUT ERROR");
        }
        
        NSLog(@"Get Cart FAIL ERROR:%@", [error localizedDescription]);
    }];
}
-(void) getNow_Playing_MoviesWithPagenumber:(NSString *) aPageNumber completion:(receivedDictionary) completionBlock{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    NSString *urlString = [NSString stringWithFormat:@"%@&page=%@", WEB_DOMAIN,@"2"];
    
    [manager GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        if (completionBlock) {
            completionBlock(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"FAIL ERROR:%@", [error localizedDescription]);
    }];

}


@end
