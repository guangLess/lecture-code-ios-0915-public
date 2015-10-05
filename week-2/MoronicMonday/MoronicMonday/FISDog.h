//
//  FISDog.h
//  MoronicMonday
//
//  Created by Timothy Clem on 10/5/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISDog : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *breed;

-(instancetype)initWithName:(NSString *)name breed:(NSString *)breed;

-(void)bark;

@end
