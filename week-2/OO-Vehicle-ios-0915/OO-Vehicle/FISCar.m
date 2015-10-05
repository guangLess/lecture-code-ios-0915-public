//
//  FISCar.m
//  OO-Vehicle
//
//  Created by Timothy Clem on 10/5/15.
//  Copyright © 2015 FIS. All rights reserved.
//

#import "FISCar.h"

@implementation FISCar

+(NSArray *)favoriteBrands
{
    return @[ @"Volkswagen", @"Chevrolet", @"Oldsmobile" ];
}

+(instancetype)carWithBrand:(NSString *)brand milesPerGallon:(CGFloat)milesPerGallon
{
    FISCar *car = [[FISCar alloc] init];
    car.brand = brand;
    car.milesPerGallon = milesPerGallon;

    return car;
}

-(instancetype)init
{
    self = [self initWithWeight:1270 topSpeed:88];
    return self;
}

-(instancetype)initWithWeight:(CGFloat)weight topSpeed:(CGFloat)topSpeed
{
    self = [super initWithWeight:weight topSpeed:topSpeed];

    if(self) {
        _cylinders = 4;
        _isAutomatic = YES;
    }

    return self;
}

@end
