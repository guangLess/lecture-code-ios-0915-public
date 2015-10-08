//  FISCard.m

#import "FISCard.h"

@interface FISCard ()

@property (strong, nonatomic, readwrite) NSString *suit;
@property (strong, nonatomic, readwrite) NSString *rank;
@property (strong, nonatomic, readwrite) NSString *cardLabel;
@property (nonatomic, readwrite) NSUInteger cardValue;

@end


@implementation FISCard

+(NSArray *)validSuits {
    return @[@"♠", @"♥", @"♣", @"♦"];
}

+(NSArray *)validRanks {
    return @[ @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

-(instancetype)init {
    self = [self initWithSuit:@"!" rank:@"N"];
    return self;
}

-(instancetype)initWithSuit:(NSString *)suit rank:(NSString *)rank {
    
    self = [super init];
    
    if (self) {
        _suit = suit;
        _rank = rank;
        _cardLabel = [NSString stringWithFormat:@"%@%@", self.suit, self.rank];
        _cardValue = [self cardValueForRank];
    }
    
    return self;
}

-(NSUInteger)cardValueForRank {
    NSDictionary *valuesForRanks = @{ @"A": @1, @"2": @2, @"3": @3,
                                      @"4": @4, @"5": @5, @"6": @6,
                                      @"7": @7, @"8": @8, @"9": @9,
                                      @"10": @10,
                                      @"J": @10, @"Q": @10, @"K": @10
                                     };

    return [valuesForRanks[self.rank] unsignedIntegerValue];;
}

-(NSString *)description {
    return self.cardLabel;
}

@end
