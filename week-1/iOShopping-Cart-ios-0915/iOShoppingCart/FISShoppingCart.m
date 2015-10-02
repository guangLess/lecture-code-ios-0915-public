//
//  FISShoppingCart.m
//  iOShoppingCart
//
//  Created by Timothy Clem on 10/2/15.
//  Copyright © 2015 FIS. All rights reserved.
//

#import "FISShoppingCart.h"

@implementation FISShoppingCart

-(instancetype)init
{
    self = [super init];
    if(self) {
        _items = [[NSMutableArray alloc] init];
    }

    return self;
}

-(NSUInteger)calculateTotalPriceInCents
{
    // Goal: sum up the priceInCents for all FISItems in self.items

    NSUInteger total = 0;

    for(FISItem *item in self.items) {
        total = total + item.priceInCents;
    }

    return total;
}

-(NSArray *)allItemsWithMinimumPriceInCents:(NSUInteger)minimumPrice
{
    // collect everything whose priceInCents is >= minimumPrice

//    NSMutableArray *winningItems = [[NSMutableArray alloc] init];
//
//    for(FISItem *item in self.items) {
//        if(item.priceInCents >= minimumPrice) {
//            // we have a winner!
//            [winningItems addObject:item];
//        }
//    }
//
//    return winningItems;

    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"priceInCents >= %lu", minimumPrice];

    return [self.items filteredArrayUsingPredicate:predicate];
}

@end
