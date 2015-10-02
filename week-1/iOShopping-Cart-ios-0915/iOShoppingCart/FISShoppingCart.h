//
//  FISShoppingCart.h
//  iOShoppingCart
//
//  Created by Timothy Clem on 10/2/15.
//  Copyright © 2015 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISItem.h"

@interface FISShoppingCart : NSObject

@property (nonatomic, strong) NSMutableArray *items;

-(NSUInteger)calculateTotalPriceInCents;
-(NSArray *)allItemsWithMinimumPriceInCents:(NSUInteger)minimumPrice;

@end
