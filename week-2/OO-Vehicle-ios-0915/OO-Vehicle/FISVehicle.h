//
//  FISVehicle.h
//  OO-Vehicle
//
//  Created by Timothy Clem on 10/5/15.
//  Copyright © 2015 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISVehicle : NSObject

@property (nonatomic) CGFloat weight;
@property (nonatomic) CGFloat topSpeed;
@property (nonatomic, readonly) CGFloat currentSpeed;
@property (nonatomic) CGFloat currentDirection;

-(instancetype)initWithWeight:(CGFloat)weight topSpeed:(CGFloat)topSpeed;

-(void)brake;
-(void)increaseSpeed;

@end
