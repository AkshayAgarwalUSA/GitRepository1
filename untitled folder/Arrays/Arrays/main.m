//
//  main.m
//  Arrays
//
//  Created by Protek 2 on 7/10/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "displayQuotes.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        displayQuotes *ob=[[displayQuotes alloc]init];
        
        NSArray *array=@[@"quote1",@"quote2",@"quote3",@"quote4",@"quote5"];
        
        NSArray *array2=@[@"quote6",@"quote7",@"quote8",@"quote9",@"quote10"];
        
        NSArray *array4=@[@"q1",@"quote2",@"q3",@"quote4",@"q5"];
        
        for(int i=0;i<array.count;i++)
        {
          NSLog(@"%@",array[i]);
        }
        
        [ob display:array];
        
        for(int i=(int)array.count;i>0;i--)
        {
            NSLog(@"%@",array[i-1]);
        }
        
        NSArray *array3=[array arrayByAddingObjectsFromArray:array2];
        
        
        NSMutableArray *array7=[[NSMutableArray alloc]init ];
    array7=[NSMutableArray arrayWithObjects:@"q1",@"quote2",@"Mary",@"quote4",@"q5",nil];
        
    for(int i=0;i<array3.count;i++)
    {
        NSLog(@"%@",array3[i]);
    }
        
    for(int i=0;i<array4.count;i++)
    {
        if([array4[i] length]>5)
        NSLog(@"%@",array4[i]);
    }
        [ob display1:array7];
      NSMutableArray *str=array7;
        for(int i=0;i<str.count;i++)
        {
            NSLog(@"%@",str[i]);
        }

        NSArray *num= @[@1,@4,@3,@6,@7];
        NSArray *sortedAscending =[num sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2){
            if ([obj1 integerValue] > [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            
            if ([obj1 integerValue] < [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedAscending;
            }
            return (NSComparisonResult)NSOrderedSame;
        
        }];
        
        NSArray *sortedDescending =[num sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2){
            if ([obj1 integerValue] < [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            
            if ([obj1 integerValue] > [obj2 integerValue]) {
                return (NSComparisonResult)NSOrderedAscending;
            }
            return (NSComparisonResult)NSOrderedSame;
            
        }];
        for(int i=0;i<sortedAscending.count;i++)
        {
            NSLog(@"%@",sortedAscending[i]);
        }
        
        for(int i=0;i<sortedDescending.count;i++)
        {
            NSLog(@"%@",sortedDescending[i]);
        }
        
        NSMutableDictionary *product= [NSMutableDictionary dictionaryWithDictionary:@{@"name":@"milk",@"price":@1.99}];
        
        NSLog(@"%@",product[@"name"]);
        [product setValue:@4.59 forKey: @"price"];
        NSLog(@"%@",product);

}
    
       
    return 0;
}
