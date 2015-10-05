//
//  FISCar.h
//  OO-Vehicle
//
//  Created by Timothy Clem on 10/5/15.
//  Copyright © 2015 FIS. All rights reserved.
//

#import "FISVehicle.h"

@interface FISCar : FISVehicle

@property (nonatomic, strong) NSString *brand;
@property (nonatomic, assign) BOOL isAutomatic;
@property (nonatomic, assign) CGFloat milesPerGallon;
@property (nonatomic, assign) NSUInteger cylinders;

+(NSArray *)favoriteBrands;

+(instancetype)carWithBrand:(NSString *)brand milesPerGallon:(CGFloat)milesPerGallon;

@end
