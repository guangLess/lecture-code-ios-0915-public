//
//  ShopItem.m
//  IntroToOO
//
//  Created by Timothy Clem on 10/1/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "ShopItem.h"

@implementation ShopItem

-(instancetype)initWithName:(NSString *)name
{
    /*
     Step 1: assign self to someone else's init
     Step 2: if that worked, set yourself up
     Step 3: return self
     */

    self = [super init];
    if(self) {
        // Set ourselves up in here.
        // Our goal is to make colorOptions an empty mutable array

//        self.colorOptions = [[NSMutableArray alloc] init];
        _colorOptions = [[NSMutableArray alloc] init];
        _price = 0.99;
        _name = name;
    }

    return self;
}

-(void)discountWithPercentage:(CGFloat)discountPercentage
{
    // want to be able to go on discount at a given percent
    // that involves changing the price by some MATH

    // reassign the price price = price - price * discount = price * ( 1 - discount )
    self.price = self.price - self.price * discountPercentage;
}

@end
