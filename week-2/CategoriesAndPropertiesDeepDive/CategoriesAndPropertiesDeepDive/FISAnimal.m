//
//  FISAnimal.m
//  CategoriesAndPropertiesDeepDive
//
//  Created by Timothy Clem on 10/6/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISAnimal.h"

@implementation FISAnimal

-(instancetype)init
{
    self = [super init];
    if(self) {
        _genus = @"Canis";
        _species = @"familiaris";

        _cylinders = 7;
    }

    return self;
}

-(void)setSpecies:(NSString *)species
{
    _species = species;

    self.isMansBestFriend = [self.genus isEqualToString:@"Canis"] && [self.species isEqualToString:@"familiaris"];
}

-(void)setCylinders:(NSUInteger)cylinders
{
    if(cylinders == 8 || cylinders == 4 || cylinders == 2) {
        // great! let it through.
        _cylinders = cylinders;
    }
}

-(void)setGenus:(NSString *)genus
{
    _genus = genus;

//    self.isMansBestFriend = [self.genus isEqualToString:@"Canis"] && [self.species isEqualToString:@"familiaris"];
}

//-(BOOL)isMansBestFriend
//{
//    return [self.genus isEqualToString:@"Canis"] && [self.species isEqualToString:@"familiaris"];
//}

@end
