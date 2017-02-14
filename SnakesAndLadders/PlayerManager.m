//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Callum Davies on 2017-02-12.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
        _currentIndex = 0;
    }
    return self;
}

-(void)createPlayers:(int)numberOfPlayers
{
    for (int i = 0; i < numberOfPlayers; i++) {
        NSString *newPlayerName = [NSString stringWithFormat:@"player%i",i+1];
        Player *newPlayer = [Player new];
        newPlayer.name = newPlayerName;
        [_players addObject:newPlayer];
    }
}

-(void)playerManagerRoll
{
    [[self currentPlayer] roll];
    self.currentIndex = (self.currentIndex + 1 ) % [self.players count];
    
}

-(Player *)currentPlayer
{
    return [self.players objectAtIndex:self.currentIndex];
}

//-(NSString *)output
//{
//    return (
//}

@end
