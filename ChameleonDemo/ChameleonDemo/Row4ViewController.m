//
//  FlatfiyViewController.m
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import "Row4ViewController.h"

@implementation Row4ViewController

@synthesize titleLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Customized navigation title
    [self createTitleLabel];
    
    //Customize navigation bar look
    if ([self.navigationController.navigationBar isTranslucent]) {
        self.navigationController.navigationBar.translucent = NO;
        self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    }
}

- (void)viewDidAppear:(BOOL)animated {
    
    //Display alert
    [self flatifyAlert];
}

- (IBAction)flatify:(id)sender {
    
    //Flatify everything
    [self flatify];
}

- (IBAction)flatifyAndContrast:(id)sender {
    
    //Flatify and contrast everything
    [self flatifyAndContrast];
}

- (void)flatifyAlert {
    
    //Display alert
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"The Flatify Experiment"
                                                    message:@"Tap 'FLATIFY' to watch every object's color auto-magically transform into a flat color. Tap 'FLATIFY & CONTRAST' to flatten and also contrast all text on the screen! Enjoy!"
                                                   delegate:nil
                                          cancelButtonTitle:@"Okay! 😎"
                                          otherButtonTitles:nil];
    
    [alert show];
}

- (void)createTitleLabel {
    
    //Create custom label for titleView
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0, 150, 40)];
    titleLabel.text = @"Flatify ";
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.adjustsFontSizeToFitWidth = YES;
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont boldSystemFontOfSize:17];
    self.navigationItem.titleView = titleLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
