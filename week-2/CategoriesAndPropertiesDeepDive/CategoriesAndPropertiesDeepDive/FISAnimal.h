//
//  FISAnimal.h
//  CategoriesAndPropertiesDeepDive
//
//  Created by Timothy Clem on 10/6/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FISZoo;


@interface FISAnimal : NSObject

@property (nonatomic, strong) NSString *genus;
@property (nonatomic, strong) NSString *species;

@property (nonatomic, strong) FISZoo *zooOfResidence;

@property (nonatomic) BOOL isMansBestFriend;

@property (nonatomic) NSUInteger cylinders;

-(void)breakOutOfZoo;

@end
