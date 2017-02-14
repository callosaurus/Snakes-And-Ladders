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
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputHandler *inputter = [InputHandler new];
        PlayerManager *playerManager = [PlayerManager new];
        
        BOOL start = NO;
        
        
        while (start == NO) {
            NSLog(@"Welcome to Snakes and Ladders! How many players?");
            NSString *userInputNumberOfPlayers = [inputter getUserInput];
           
            //must input valid number of players
            if ([userInputNumberOfPlayers intValue] > 0) {
                [playerManager createPlayers:[userInputNumberOfPlayers intValue]];
                start = YES;
            } else {
                NSLog(@"Please enter a numeric value greater than 0 :( \n.\n.\n.");
            }
            
        }
    
        
        
        while (YES) {
            
            NSLog(@"Type 'roll' or 'r' to roll the dice, %@!", playerManager.currentPlayer.name);
            NSString *rollOrNot = [inputter getUserInput];
            if ([rollOrNot isEqualToString:@"roll"] || [rollOrNot isEqualToString:@"r"]) {
                [playerManager playerManagerRoll];
            } else {
                NSLog(@"Please enter 'roll' or 'r'");
            }
            
            //check if any player has won.
            for (Player *player in playerManager.players) {
                if (player.gameOver == YES) {
                    NSLog(@"GAME OVER, %@ wins!", player.name);
                    break;
                }
            }
            
        //End of while loop
        }
        
    }
    return 0;
}
