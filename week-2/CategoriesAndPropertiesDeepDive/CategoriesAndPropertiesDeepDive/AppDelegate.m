//
//  AppDelegate.m
//  CategoriesAndPropertiesDeepDive
//
//  Created by Timothy Clem on 10/6/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "AppDelegate.h"
#import "FISZoo.h"
#import "FISAnimal.h"
#import "FISAnimal+FISMovement.h"
#import "NSArray+FISUtils.h"


@interface AppDelegate ()

@property (nonatomic, strong) NSString *myPrivateThing;

@end


@implementation AppDelegate

//-(NSArray *)arrayOfCharactersInString:(NSString *)string
//{
//    // ...
//}

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    FISAnimal *dog = [[FISAnimal alloc] init];
    dog.genus = @"Canis";
    dog.species = @"familiaris";

//    dog.breakOutOfZoo;

    NSMutableArray *stuff = [@[ @1, @2, @3 ] mutableCopy];
    [stuff removeAllObjects];

    NSLog(@"%@", dog.description);

//    dog.cylinders = 8;
//    NSLog(@"cylinders: %lu", dog.cylinders);
//
//    dog.cylinders = 7;
//    NSLog(@"cylinders: %lu", dog.cylinders);

//    dog.zooOfResidence.animals

//    NSLog(@"Dog is %@ %@", dog.genus, dog.species);
//    NSLog(@"Dog is %@ %@", [dog genus], [dog species]);
//
//
//    FISZoo *zoo = [[FISZoo alloc] init];
//    zoo.animals = [@[ dog ] mutableCopy];
//    NSLog(@"Canines: %@", zoo.canines);

//    dog.species = @"corgus";
//    [dog setSpecies:@"corgus"];

//    NSLog(@"isMansBestFriend: %d", dog.isMansBestFriend);


//    [dog move];

//    [@"hello" characters]


//    NSMutableArray *someNumbers = [@[ @1, @2, @3 ] mutableCopy];
//    NSLog(@"sum: %f", [someNumbers sum]);

    return YES;
}

@end
