//
//  ComplementaryViewController.h
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Chameleon.h"

@interface ComplementaryViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *flatArray;
@property (nonatomic, strong) NSMutableArray *nonFlatArray;

@property (nonatomic, weak) IBOutlet UIBarButtonItem *diceButton;

@property (nonatomic, weak) IBOutlet UIView *mainView;

@property (nonatomic, weak) IBOutlet UIView *view1;
@property (nonatomic, weak) IBOutlet UIView *view2;
@property (nonatomic, weak) IBOutlet UIView *view3;
@property (nonatomic, weak) IBOutlet UIView *view4;
@property (nonatomic, weak) IBOutlet UIView *view5;

@property (nonatomic, weak) IBOutlet UIView *view1n;
@property (nonatomic, weak) IBOutlet UIView *view2n;
@property (nonatomic, weak) IBOutlet UIView *view3n;
@property (nonatomic, weak) IBOutlet UIView *view4n;
@property (nonatomic, weak) IBOutlet UIView *view5n;

- (IBAction)randomize:(id)sender;

@end
