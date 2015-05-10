//
//  MainNavigationController.m
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import "MainNavigationController.h"

@implementation MainNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    
    //Return the style that best contrasts the navigationBar's barTintColor
    return [ChameleonStatusBar statusBarStyleForColor:self.navigationBar.barTintColor];
    
    //Shorthand
    //return StatusBarContrastColorOf(self.navigationBar.barTintColor);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
