//
//  FISCard.h
//  OOP-Cards-Model
//
//  Created by Timothy Clem on 10/7/15.
//  Copyright © 2015 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISCard : NSObject

+(NSArray *)validSuits;
+(NSArray *)validRanks;

@property (nonatomic, strong, readonly) NSString *suit;
@property (nonatomic, strong, readonly) NSString *rank;
@property (nonatomic, strong, readonly) NSString *cardLabel;
@property (nonatomic, readonly) NSUInteger cardValue;

// Don't use -init, you fools!

-(instancetype)initWithSuit:(NSString *)suit rank:(NSString *)rank;

@end
