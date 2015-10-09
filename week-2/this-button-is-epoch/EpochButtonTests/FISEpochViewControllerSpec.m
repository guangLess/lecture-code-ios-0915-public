//
//  FISEpochViewControllerSpec.m
//  EpochButton
//
//  Created by Chris Gonzales on 5/12/14.
//  Copyright 2014 FIS. All rights reserved.
//

#import "Specta.h"
#import "FISEpochViewController.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(FISEpochViewController)

describe(@"FISEpochViewController", ^{
    __block Swizzlean *swizzle;

    beforeAll(^{
        [KIFUITestActor setDefaultTimeout:2];

        swizzle = [[Swizzlean alloc] initWithClassToSwizzle:[FISEpochViewController class]];

        [swizzle swizzleInstanceMethod:NSSelectorFromString(@"epochMethod") withReplacementImplementation:^(id _self){
            return 35.0;
        }];

    });

    beforeEach(^{
    });

    it(@"should return an epoch time when epochTime button is tapped", ^{
        [tester waitForViewWithAccessibilityLabel:@"epoch button"];
        [tester tapViewWithAccessibilityLabel:@"epoch button"];

        UILabel *epochLabel = (UILabel *)[tester waitForViewWithAccessibilityLabel:@"epoch label"];
        expect(epochLabel.text).to.equal([NSString stringWithFormat:@"%f",35.0]);
    });

    afterEach(^{

    });

    afterAll(^{

    });
});

SpecEnd
