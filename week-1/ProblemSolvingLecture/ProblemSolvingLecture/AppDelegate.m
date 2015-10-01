//
//  AppDelegate.m
//  ProblemSolvingLecture
//
//  Created by Timothy Clem on 9/30/15.
//  Copyright © 2015 Mr. Fifths Heavy Industries. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSNumber *five = @5;
    NSNumber *two = @2;

    NSNumber *pi = @3.14159265359;

    NSNumber *ten = @(five.integerValue * two.integerValue);

    NSDictionary *englishNumberWords = @{ @1: @"one", @2: @"two" };
    NSString *englishWordForOne = englishNumberWords[@1];


    NSString *nilString = nil;
    NSLog(@"the length of nil is ... %lu", nilString.length);
    NSLog(@"nil uppercased is ... %@", nilString.uppercaseString);

    NSMutableArray *nilMutableArray = nil;
    [nilMutableArray addObject:@"HELLO?!"];
    NSLog(@"the array is now: %@", nilMutableArray);


//    NSArray *prime = @[ 2, 3, 5, 7 ];

    return YES;
}

@end
