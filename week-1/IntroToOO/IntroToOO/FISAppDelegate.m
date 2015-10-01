//
//  AppDelegate.m
//  IntroToOO
//
//  Created by Timothy Clem on 10/1/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"
#import "ShopItem.h"


@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    NSMutableDictionary *item = [@{ @"name": @"Tim's Fancy Beard Oil",
//                            @"price": @10.99,
//                            @"starRating": @4.5
//                           } mutableCopy];
//
////    NSNumber *starRating = item[@"starRating"];
//
//    NSNumber *price = item[@"price"];
//    CGFloat newDiscountedPrice = price.floatValue * 0.8;
//    item[@"price"] = @(newDiscountedPrice);

//    NSMutableArray *emptyMutableArray = [[NSMutableArray alloc] init];

    ShopItem *beardOil = [[ShopItem alloc] initWithName:@"Beard Oil"];
//    beardOil.name = @"Tim's Fancy Beard Oil";
//    beardOil.price = 10.99;
//    beardOil.numberOfRatings = 50;

    ShopItem *corgi = [[ShopItem alloc] initWithName:@"Corgi"];
//    shibaInu.name = @"A Chubby Shiba Inu";
    corgi.price = 100;
    corgi.numberOfRatings = 5000000;

//    shibaInu.colorOptions = [[NSMutableArray alloc] init];
    [corgi.colorOptions addObject:@"Orange"];
    [corgi.colorOptions addObject:@"Black and Tan"];

    [self doSomething];

    NSArray *timsShoppingCart = @[ beardOil, corgi ];

    return YES;
}

-(void)doSomething
{

}

@end
