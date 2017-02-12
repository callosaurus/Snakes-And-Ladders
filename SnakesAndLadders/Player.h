//
//  Player.h
//  SnakesAndLadders
//
//  Created by Callum Davies on 2017-02-11.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property NSDictionary *gameLogic;
@property NSString *output;
@property BOOL gameOver;

-(void)roll;

@end
