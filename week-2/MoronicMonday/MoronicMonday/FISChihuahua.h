//
//  FISChihuahua.h
//  MoronicMonday
//
//  Created by Timothy Clem on 10/5/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISDog.h"

@interface FISChihuahua : FISDog

@property (nonatomic, assign) NSUInteger volume;

-(instancetype)initWithName:(NSString *)name breed:(NSString *)breed volume:(NSUInteger)volume;

-(instancetype)initWithName:(NSString *)name volume:(NSUInteger)volume;

@end
