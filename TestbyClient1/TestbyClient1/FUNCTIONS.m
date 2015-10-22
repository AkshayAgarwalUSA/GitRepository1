//
//  FUNCTIONS.m
//  TestbyClient1
//
//  Created by Protek 2 on 10/21/15.
//  Copyright © 2015 Protek 2. All rights reserved.
//

#import "FUNCTIONS.h"

@implementation FUNCTIONS

-(void)prog1{
    
    NSString *string=@"Where the wind blows";
    NSArray *array=[string componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSInteger count=[array count];
    NSLog(@"WORD COUNT: %ld WORDS",(long)count);

}

-(void)prog2{
    
    NSString *str1=@"12321";
    NSMutableString *str2 = [[NSMutableString alloc] init];
    NSInteger strLength = [str1 length]-1;
    for (NSInteger i=strLength; i>=0; i--){
        [str2 appendString:[NSString stringWithFormat:@"%C",[str1 characterAtIndex:i]]];
        
    }
    if ([str1 isEqual:str2]){
        NSLog(@"str %@ is palindrome",str1);
    }
    
    else{
        
        NSLog(@"str %@ is not palindrome",str1);
    }

}

-(void)prog3{
    
    BOOL duplicates = '\0';
    NSArray *array1=@[@1,@2,@3,@2,@4];
    for(int j = 0; j < array1.count; j++){
        for(int k = 0; k < array1.count; k++){
            if (array1[k] == array1[j]){
                duplicates = true;
            }
        }
    }
    NSLog(@"number of Duplicates %hhd",duplicates);
    

}

-(int)factorial:(int)number{
    double tempResult = 1;
    for (int i=2; i<=number; i++) {
        tempResult *= i;
    }
    return tempResult;
}

-(int)fact:(int)number
{
    int temp;
    if(number <= 1) return 1;
    temp = number * [self fact:(number-1)];
    return temp;
}
@end
