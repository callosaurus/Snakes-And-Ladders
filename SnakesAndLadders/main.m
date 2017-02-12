//
//  main.m
//  SnakesAndLadders
//
//  Created by Callum Davies on 2017-02-11.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Welcome to Snakes and Ladders! Type 'roll' or 'r' to roll the dice.");
        InputHandler *inputter = [InputHandler new];
        Player *newPlayer = [Player new];
        
        while (YES) {
            
            
            NSString *rollOrNot = [inputter getUserInput];
            if ([rollOrNot isEqualToString:@"roll"] || [rollOrNot isEqualToString:@"r"]) {
                [newPlayer roll];
            } else {
                NSLog(@"Please enter 'roll' or 'r'");
            }
            
         
        //End of while loop
        }
        
    }
    return 0;
}
