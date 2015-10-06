//
//  FISZoo.m
//  CategoriesAndPropertiesDeepDive
//
//  Created by Timothy Clem on 10/6/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISZoo.h"

@implementation FISZoo

-(NSArray *)canines
{
    NSMutableArray *allCanines = [[NSMutableArray alloc] init];
    for(FISAnimal *animal in self.animals) {
        if([animal.genus isEqualToString:@"Canis"]) {
            [allCanines addObject:animal];
        }
    }

    return allCanines;
}

@end
