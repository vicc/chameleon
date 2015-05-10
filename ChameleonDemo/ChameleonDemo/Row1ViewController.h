//
//  Row1ViewController.h
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Chameleon.h"

@interface Row1ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton *randomColorButton;
@property (nonatomic, weak) IBOutlet UIButton *complementaryColorButton;

- (IBAction)randomize:(id)sender;

@end
