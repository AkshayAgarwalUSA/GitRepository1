//
//  displayQuotes.m
//  
//
//  Created by Protek 2 on 7/10/15.
//
//

#import "displayQuotes.h"

@implementation displayQuotes

-(void)display:(NSArray *) array1
{
    int l=(int)array1.count;
    NSLog(@"%i",l);
    for(int i=4;i<array1.count;i++)
    {
        NSLog(@"%@",array1[i]);
    }
}

-(NSMutableArray *)display1:(NSMutableArray *)array7
{
    int l=(int)[array7 indexOfObject:@"Mary"];
    [array7 replaceObjectAtIndex:l withObject:@"Peter"];
    /*for(int i=0;i<array7.count;i++)
    {
        NSLog(@"%@",array7[i]);
    }*/
    return array7;
}

@end
