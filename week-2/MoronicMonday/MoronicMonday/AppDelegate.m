//
//  AppDelegate.m
//  MoronicMonday
//
//  Created by Timothy Clem on 10/5/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "AppDelegate.h"
#import "FISDog.h"
#import "FISChihuahua.h"


@interface AppDelegate ()

@end


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSLog(@"normalDog");
    FISDog *normalDog = [[FISDog alloc] init];
    NSLog(@"normalDog is a %@ named %@", normalDog.breed, normalDog.name);


//    [normalDog bark];
//
//    NSLog(@"chihuahua");
//    FISChihuahua *chihuahua = [[FISChihuahua alloc] init];
//    [chihuahua bark];

//    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
//    NSArray *normalArray =  @[ @"hello", @"world!" ];   //[[NSArray alloc] init];


    



    return YES;
}

@end
