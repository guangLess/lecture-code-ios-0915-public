//
//  FISAnimal.m
//  IntroToInheritance
//
//  Created by Timothy Clem on 10/2/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISAnimal.h"

@implementation FISAnimal

-(void)move
{
    NSLog(@"I am an FISAnimal named %@ and I am moving!", self.name);
}

-(void)eat
{
    NSLog(@"I am an FISAnimal named %@ and I am eating!", self.name);
}

@end
