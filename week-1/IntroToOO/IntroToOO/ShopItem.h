//
//  ShopItem.h
//  IntroToOO
//
//  Created by Timothy Clem on 10/1/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface ShopItem : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) CGFloat price;
@property (nonatomic) NSUInteger numberOfRatings;
@property (nonatomic, strong) NSMutableArray *colorOptions;  // Strings

-(instancetype)initWithName:(NSString *)name;
-(void)discountWithPercentage:(CGFloat)discountPercentage;

@end
