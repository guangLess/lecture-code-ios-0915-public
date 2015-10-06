//
//  NSArray+FISUtils.m
//  CategoriesAndPropertiesDeepDive
//
//  Created by Timothy Clem on 10/6/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "NSArray+FISUtils.h"

@implementation NSArray (FISUtils)

-(CGFloat)sum
{
    CGFloat sum = 0;
    for(NSNumber *number in self) {
        CGFloat numberAsFloat = number.floatValue;
        sum += numberAsFloat;
    }

    return sum;
}

@end
