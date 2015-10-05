//
//  FISVehicle.m
//  OO-Vehicle
//
//  Created by Timothy Clem on 10/5/15.
//  Copyright © 2015 FIS. All rights reserved.
//

#import "FISVehicle.h"


@interface FISVehicle ()

@property (nonatomic, readwrite) CGFloat currentSpeed;

@end


@implementation FISVehicle

-(instancetype)init
{
    self = [self initWithWeight:0 topSpeed:0];
    return self;
}

-(instancetype)initWithWeight:(CGFloat)weight topSpeed:(CGFloat)topSpeed
{
    self = [super init];

    if(self) {
        _currentSpeed = 0;
        _currentDirection = 0;

        _weight = weight;
        _topSpeed = topSpeed;
    }

    return self;
}

-(void)brake
{
    self.currentSpeed = 0;
}

-(void)increaseSpeed
{
    self.currentSpeed = self.topSpeed;
}

@end
