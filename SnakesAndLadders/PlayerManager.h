//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Callum Davies on 2017-02-12.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray *players;
@property NSInteger currentIndex;

-(void)createPlayers:(int)numberOfPlayers;
-(void)playerManagerRoll;
//-(NSString *)output;
-(Player *)currentPlayer;

@end
