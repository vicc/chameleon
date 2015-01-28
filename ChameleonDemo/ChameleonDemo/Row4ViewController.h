//
//  FlatfiyViewController.h
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Chameleon.h"

@interface Row4ViewController : UIViewController

@property (nonatomic, strong) UILabel *titleLabel;

- (IBAction)flatify:(id)sender;
- (IBAction)flatifyAndContrast:(id)sender;

@end
