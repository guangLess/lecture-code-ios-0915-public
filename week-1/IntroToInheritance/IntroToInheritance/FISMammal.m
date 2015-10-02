//
//  FISMammal.m
//  IntroToInheritance
//
//  Created by Timothy Clem on 10/2/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISMammal.h"

@implementation FISMammal

-(void)giveLiveBirth
{
    NSLog(@"I, %@, the mammal, have been ordered to give live birth and this is really weird. This has gone to a dark place.", self.name);
}

-(void)move
{
    [super move];

    NSLog(@"I am a mammal named %@, and I am having trouble moving because of all my hair.", self.name);
}

@end
