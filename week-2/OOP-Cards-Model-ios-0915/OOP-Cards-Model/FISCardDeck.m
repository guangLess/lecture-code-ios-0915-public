//
//  FISCardDeck.m
//  OOP-Cards-Model
//
//  Created by Timothy Clem on 10/7/15.
//  Copyright © 2015 Al Tyus. All rights reserved.
//

#import "FISCardDeck.h"

@implementation FISCardDeck

-(instancetype)init
{
    self = [super init];
    if(self) {
        [self makeNewDeck];
    }

    return self;
}

-(void)makeNewDeck
{
    // goal: self.remainingCards should have 52 instances of FISCard, one for each ... card... in a standard deck

    self.remainingCards = [[NSMutableArray alloc] init];

    NSArray *suits = [FISCard validSuits];
    NSArray *ranks = [FISCard validRanks];

    for(NSString *suit in suits) {
        NSLog(@"Now doing suit %@", suit);
        for(NSString *rank in ranks) {
            NSLog(@"    rank: %@", rank);
            // The combination i care about is (suit, rank)
            FISCard *card = [[FISCard alloc] initWithSuit:suit rank:rank];

            [self.remainingCards addObject:card];
        }
    }
}

@end
