//
//  FISAnimal.h
//  IntroToInheritance
//
//  Created by Timothy Clem on 10/2/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISAnimal : NSObject

@property (nonatomic, strong) NSString *name;

-(void)move;
-(void)eat;

@end
