//
//  FISZoo.h
//  CategoriesAndPropertiesDeepDive
//
//  Created by Timothy Clem on 10/6/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISAnimal.h"

@interface FISZoo : NSObject

@property (nonatomic, strong) NSMutableArray *animals;

// want a list of all things whose genus is Canis.... canines
//-(NSArray *)canines;  // or.....
@property (nonatomic, strong, readonly) NSArray *canines;

@end
