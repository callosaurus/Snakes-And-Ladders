//
//  Player.m
//  SnakesAndLadders
//
//  Created by Callum Davies on 2017-02-11.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameOver = NO;
        
        NSNumber *specialSquare1 = @4;
        NSNumber *specialSquare2 = @9;
        NSNumber *specialSquare3 = @17;
        NSNumber *specialSquare4 = @20;
        NSNumber *specialSquare5 = @28;
        NSNumber *specialSquare6 = @40;
        NSNumber *specialSquare7 = @51;
        NSNumber *specialSquare8 = @63;
        NSNumber *specialSquare9 = @64;
        NSNumber *specialSquare10 = @89;
        NSNumber *specialSquare11 = @95;
        NSNumber *specialSquare12 = @99;
        
        NSNumber *endSquare1 = @14;
        NSNumber *endSquare2 = @31;
        NSNumber *endSquare3 = @7;
        NSNumber *endSquare4 = @38;
        NSNumber *endSquare5 = @84;
        NSNumber *endSquare6 = @59;
        NSNumber *endSquare7 = @67;
        NSNumber *endSquare8 = @81;
        NSNumber *endSquare9 = @60;
        NSNumber *endSquare10 = @26;
        NSNumber *endSquare11 = @75;
        NSNumber *endSquare12 = @78;
        
        _gameLogic = @{ specialSquare1 : endSquare1,
                        specialSquare2 : endSquare2,
                        specialSquare3 : endSquare3,
                        specialSquare4 : endSquare4,
                        specialSquare5 : endSquare5,
                        specialSquare6 : endSquare6,
                        specialSquare7 : endSquare7,
                        specialSquare8 : endSquare8,
                        specialSquare9 : endSquare9,
                        specialSquare10 : endSquare10,
                        specialSquare11 : endSquare11,
                        specialSquare12 : endSquare12,
                        };
    }
    return self;
}

-(void)roll
{
    int roll = arc4random_uniform(6)+1;
    NSLog(@"Rolled a %i!", roll);
    _currentSquare += roll;
    NSLog(@"Landed on square %lu!", (unsigned long)_currentSquare);
    
    if (_currentSquare >= 100) {
        _gameOver = NO;
        NSLog(@"Game Over!");
    }
    
//  check if player landed on special square
    
    //convert _currentSquare to NSNumber
    NSNumber *currentSquareAsANumber = [NSNumber numberWithInt:_currentSquare];
    
    //convert special cases to an array
    NSArray *specialKeys = [_gameLogic allKeys];
    
    for (NSNumber *key in specialKeys) {
        if (currentSquareAsANumber == key) {
            NSNumber *matchedKey = currentSquareAsANumber;
            NSNumber *newSquare = [_gameLogic objectForKey:matchedKey];
            _currentSquare = [newSquare integerValue];
            
//            if(_currentSquare >= 100) {
//                _currentSquare = 100;
//            
//            }
            
            newSquare = [NSNumber numberWithInt:_currentSquare];
            
            if (newSquare > currentSquareAsANumber) {
                NSLog(@"You landed on a ladder, and jumped to square %@!", newSquare);
                return;
            } else {
                NSLog(@"You landed on a snake, and slid to square %@!", newSquare);
                return;
            }
        }
    }
    

    
}

@end
