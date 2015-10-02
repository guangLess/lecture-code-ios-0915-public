//
//  FISMammal.h
//  IntroToInheritance
//
//  Created by Timothy Clem on 10/2/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISAnimal.h"

@interface FISMammal : FISAnimal

@property (nonatomic, strong) NSString *hairColor;

-(void)giveLiveBirth;

@end
