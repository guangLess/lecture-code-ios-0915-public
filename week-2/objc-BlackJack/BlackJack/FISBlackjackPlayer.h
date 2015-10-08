//  FISBlackjackPlayer.h

#import <Foundation/Foundation.h>
#import "FISCard.h"

@interface FISBlackjackPlayer : NSObject

// is-a (subclass of) vs. has-a (has properties/composition)

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray *cardsInHand;
@property (nonatomic) NSUInteger handscore;

@property (nonatomic) BOOL aceInHand;
@property (nonatomic) BOOL blackjack;
@property (nonatomic) BOOL busted;
@property (nonatomic) BOOL stayed;

@property (nonatomic) NSUInteger wins;
@property (nonatomic) NSUInteger losses;

- (instancetype)initWithName:(NSString *)name;

- (void)resetForNewGame;

/**
 Gives the player a new card.
 @param card The card the player was dealt.
 */
- (void)acceptCard:(FISCard *)card;

- (BOOL)shouldHit;

@end
