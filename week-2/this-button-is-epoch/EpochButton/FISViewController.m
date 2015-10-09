//
//  FISViewController.m
//  EpochButton
//
//  Created by Timothy Clem on 10/9/15.
//  Copyright © 2015 FIS. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end


@implementation FISViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.button setTitle:@"Weeee" forState:UIControlStateNormal];
    [self.button titleForState:UIControlStateNormal];
}

-(BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
