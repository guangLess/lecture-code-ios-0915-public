//
//  FISChihuahua.m
//  MoronicMonday
//
//  Created by Timothy Clem on 10/5/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISChihuahua.h"

@implementation FISChihuahua

-(instancetype)initWithName:(NSString *)name breed:(NSString *)breed volume:(NSUInteger)volume
{
    self = [super initWithName:name breed:breed];
    if(self) {
        _volume = volume;
    }

    return self;
}

-(instancetype)initWithName:(NSString *)name volume:(NSUInteger)volume
{
    self = [self initWithName:name breed:@"chihuahua" volume:volume];
    return self;


//    self = [super initWithName:name breed:@"chihuahua"];
//    if(self) {
//        _volume = volume;
//    }
//    return self;
}

-(void)bark
{
    for(NSUInteger i = 0; i < 8; i++) {
        [super bark];
    }
}

@end
