//  FISItem.m

#import "FISItem.h"

@implementation FISItem

- (instancetype)init {
    self = [self initWithName:@""
                 priceInCents:0];

    return self;
}

/*
 -(returnType)nameOfTheMethodPart1:(argument type 1)argumentName
                             part2:(argument type 2)argumentName2 ...;
 */

- (instancetype)initWithName:(NSString *)name
                priceInCents:(NSUInteger)reallyThePriceInCents {
    self = [super init];
    if (self) {
        _name = name;
        _priceInCents = reallyThePriceInCents;
    }
    return self;
}

@end
