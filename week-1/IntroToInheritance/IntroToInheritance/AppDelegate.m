//
//  AppDelegate.m
//  IntroToInheritance
//
//  Created by Timothy Clem on 10/2/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "AppDelegate.h"
#import "FISAnimal.h"
#import "FISMammal.h"
#import "FISPlatypus.h"
#import "FISZoo.h"

@interface AppDelegate ()

@end


@implementation AppDelegate


-(NSArray *)someArray
{
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    [mutableArray addObject:@"hi!"];

    return mutableArray;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    FISAnimal *eagle = [[FISAnimal alloc] init];
    eagle.name = @"Uncle Sam";
//    [eagle move];
////    [eagle eat];
//
//
    FISMammal *dog = [[FISMammal alloc] init];
    dog.name = @"Capt. Fluffington";
    [dog move];

//    dog.hairColor = @"brown";
////    NSLog(@"dog's haircolor is %@", dog.hairColor);
////    [dog move];
////    [dog eat];
////    [dog poisonPredator]; no can do
//    [dog giveLiveBirth];
//
//
    FISPlatypus *polly = [[FISPlatypus alloc] init];
    polly.name = @"Polly the Platypus";
////    [polly poisonPredator];
////    [polly move];
//    [polly giveLiveBirth];


//    FISAnimal *animalThatIsSecretlyAMammal = dog;
//    [animalThatIsSecretlyAMammal move];
//
//
//    FISZoo *zoo = [[FISZoo alloc] init];
//    zoo.creatures = @[ eagle, dog, polly ];
//
//    for(FISAnimal *creature in zoo.creatures) {
//        NSLog(@"Hello, my name is %@", creature.name);
//
//        // if the creature is a platypus, have it -poisonPredator
//        if([creature isKindOfClass:[FISPlatypus class]]) {
//            FISPlatypus *creatureAsPlatypus = (FISPlatypus *)creature;
//            [creatureAsPlatypus poisonPredator];
//        }
//
////        [creature poisonPredator];
//    }


    return YES;
}

@end
