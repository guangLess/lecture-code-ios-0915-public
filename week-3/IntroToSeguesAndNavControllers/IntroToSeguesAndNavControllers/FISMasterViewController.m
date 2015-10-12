//
//  ViewController.m
//  IntroToSeguesAndNavControllers
//
//  Created by Timothy Clem on 10/12/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

#import "FISMasterViewController.h"
#import "FISDetailViewController.h"

@interface FISMasterViewController ()

@end

@implementation FISMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSLog(@"%@ viewDidLoad", self.class);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FISDetailViewController *detailVC = segue.destinationViewController;

    if([segue.identifier isEqualToString:@"BananaDogSegue"]) {
        NSLog(@"you tapped banana dog");
        detailVC.nameToDisplay = @"Banana Dog";
    }
    else if([segue.identifier isEqualToString:@"LobsterDogSegue"]) {
        NSLog(@"lobster dog!");
        detailVC.nameToDisplay = @"Lobster Dog";
    }
    else {
        NSLog(@"hedgehog!");
        detailVC.nameToDisplay = @"Hedgehog";
    }
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
