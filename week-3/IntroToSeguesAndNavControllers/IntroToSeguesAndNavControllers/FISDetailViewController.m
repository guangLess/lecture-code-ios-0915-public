//
//  FISDetailViewController.m
//  IntroToSeguesAndNavControllers
//
//  Created by Timothy Clem on 10/12/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISDetailViewController.h"

@interface FISDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation FISDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSLog(@"%@ viewDidLoad", self.class);

    self.nameLabel.text = self.nameToDisplay;
    self.title = self.nameToDisplay;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%@ viewWillAppear", self.class);
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"%@ viewDidAppear", self.class);
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"%@ viewWillDisappear", self.class);
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"%@ viewDidDisappear", self.class);
}

-(IBAction)backButtonTapped:(id)sender
{
//    [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
