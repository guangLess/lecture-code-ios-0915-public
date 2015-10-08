//
//  ViewController.m
//  IntroToViews
//
//  Created by Timothy Clem on 10/8/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *userInput;

@end


@implementation FISViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
}

-(IBAction)buttonTapped:(UIButton *)sender
{
    self.label.text = self.userInput.text;
    sender.backgroundColor = [UIColor purpleColor];
}

@end
