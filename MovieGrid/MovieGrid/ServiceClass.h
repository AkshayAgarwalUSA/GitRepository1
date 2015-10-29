//
//  ServiceClass.h
//  MovieGrid
//
//  Created by Protek One on 10/29/15.
//  Copyright © 2015 Protek One. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^receivedDictionary)(NSDictionary *dictionary);
typedef void(^receivedArray)(NSArray *array);

@interface ServiceClass : NSObject <NSURLSessionDelegate>

/**
 *  Gets NowPLaying Movies
 */
-(void) getNow_Playing_MoviesWithPagenumber:(NSString *) aPageNumber completion:(receivedDictionary) completionBlock;

-(void) getNow_Playing_Movies:(receivedDictionary) completionBlock;


@end
