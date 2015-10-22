//
//  main.m
//  Forloops
//
//  Created by Protek 2 on 7/6/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        int i,c=1;
        int ch;
        for(i=1;i<30;)
        {
            NSLog(@"Odd numbers till 30 are: %i",i);
            i=i+2;
        }
        i=1;
            while(c<100)
            {
            c=i*5;
            NSLog(@"Multiples of 5 till 100 : %i",c);
            i++;
            }
        i=0;
        scanf("%i",&i);
        NSLog(@"%i",i);
        //while(i)
        //{
            i=i/10;
            ch=i%10;
            NSLog(@"%i",ch);
            
            /*switch (ch) {
            case 1:NSLog(@"One");
                break;
            case 2:NSLog(@"Two");
                break;
            case 3:NSLog(@"Three");
                break;
            case 4:NSLog(@"Four");
                break;
            case 5:NSLog(@"Five");
                break;
            
        }
            switch (i)
            {
                case 1:NSLog(@"One");
                    break;
                case 2:NSLog(@"Two");
                    break;
                case 3:NSLog(@"Three");
                    break;
                case 4:NSLog(@"Four");
                    break;
                case 5:NSLog(@"Five");
                    break;
                    
            }*/
        //}
       
    }
    return 0;
}
