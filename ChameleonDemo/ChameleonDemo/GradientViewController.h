//
//  GradientViewController.h
//  ChameleonDemo
//
//  Created by Vicc Alexander on 8/21/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Chameleon.h"

@interface GradientViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton *colorButton1;
@property (nonatomic, weak) IBOutlet UIButton *colorButton2;

@property (nonatomic, weak) IBOutlet UILabel *topToBottomGradientLabel;
@property (nonatomic, weak) IBOutlet UILabel *leftToRightGradientLabel;
@property (nonatomic, weak) IBOutlet UILabel *radialGradientLabel;

- (IBAction)randomizeColor1;
- (IBAction)randomizeColor2;

@end
