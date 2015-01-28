//
//  Row2ViewController.h
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Chameleon.h"

@interface Row2ViewController : UIViewController

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *navBarButton;
@property (nonatomic, weak) IBOutlet UIButton *randomButton;
@property (nonatomic, weak) IBOutlet UITextView *randomTextView;

- (IBAction)randomizeNavigationBar:(id)sender;
- (IBAction)randomizeButtonColor:(id)sender;

@end
