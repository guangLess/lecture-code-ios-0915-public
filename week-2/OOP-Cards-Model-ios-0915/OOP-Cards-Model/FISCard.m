//
//  FISCard.m
//  OOP-Cards-Model
//
//  Created by Timothy Clem on 10/7/15.
//  Copyright © 2015 Al Tyus. All rights reserved.
//

#import "FISCard.h"

@interface FISCard ()

@property (nonatomic, strong, readwrite) NSString *suit;
@property (nonatomic, strong, readwrite) NSString *rank;
//@property (nonatomic, strong, readwrite) NSString *cardLabel;
//@property (nonatomic, readwrite) NSUInteger cardValue;

@end


@implementation FISCard

+(NSArray *)validRanks
{
    return @[ @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K" ];
}

+(NSArray *)validSuits
{
    return @[ @"♠", @"♥", @"♣", @"♦" ];
}

-(NSString *)cardLabel
{
    // the sole job of this guy is to return what cardLabel should be

    return [NSString stringWithFormat:@"%@%@", self.suit, self.rank];
}

-(NSUInteger)cardValue
{
    NSDictionary *ranksToValues = @{ @"A": @1,
                                     @"2": @2,
                                     // ...
                                     @"J": @10,
                                     @"Q": @10,
                                     @"K": @10 };

    NSNumber *valueForRank = ranksToValues[self.rank];
    return valueForRank.unsignedIntegerValue;

//    NSUInteger rankIndex = [[FISCard validRanks] indexOfObject:self.rank];
//
//    if(rankIndex == 0) {
//        return 1;
//    }
//
//    return rankIndex + 1;
}

-(instancetype)initWithSuit:(NSString *)suit rank:(NSString *)rank
{
    self = [super init];
    if(self) {
        _suit = suit;
        _rank = rank;

        // now we need to set cardLabel & cardValue as appropriate


    }

    return self;
}

-(instancetype)init
{
    self = [self initWithSuit:@"!" rank:@"N"];
    return self;
}

@end
