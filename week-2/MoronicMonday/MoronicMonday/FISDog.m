//
//  FISDog.m
//  MoronicMonday
//
//  Created by Timothy Clem on 10/5/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISDog.h"

@implementation FISDog

-(instancetype)init
{
    self = [self initWithName:@"Fido" breed:@"mutt"];
    return self;
}

-(instancetype)initWithName:(NSString *)name breed:(NSString *)breed
{
    self = [super init];
    if(self) {
        _name = name;
        _breed = breed;
    }

    return self;
}

-(void)bark
{
    NSLog(@"woof");
}

@end
