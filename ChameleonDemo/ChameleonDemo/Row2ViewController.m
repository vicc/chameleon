//
//  Row2ViewController.m
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import "Row2ViewController.h"

@implementation Row2ViewController

@synthesize titleLabel, navBarButton, randomButton, randomTextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Create custom navigation title
    [self createTitleLabel];
    
    //Customize navigation bar
    if ([self.navigationController.navigationBar isTranslucent]) {
        self.navigationController.navigationBar.translucent = NO;
    }
    
    //Randomize backgroundColor & contrast titleColor
    randomButton.backgroundColor = [UIColor randomFlatColor];
    randomButton.titleLabel.textColor = [UIColor colorWithContrastingBlackOrWhiteColorOn:randomButton.backgroundColor isFlat:NO];
    
    //Bracket notation for setting the text color
    //[randomButton setTitleColor:[UIColor colorWithContrastingBlackOrWhiteColorOn:randomButton.backgroundColor isFlat:NO] forState:UIControlStateApplication];
    
    //Randomize textView's colors
    randomTextView.backgroundColor = [UIColor colorWithComplementaryFlatColorOf:randomButton.backgroundColor];
    randomTextView.textColor = [UIColor colorWithContrastingBlackOrWhiteColorOn:randomTextView.backgroundColor isFlat:NO];
 
    /* - Shorthand
     
     //Randomize backgroundColor & contrast titleColor
     randomButton.backgroundColor = RandomFlatColor;
     randomButton.titleLabel.textColor = ContrastColorOf(randomButton.backgroundColor, NO);
     
     //Randomize textView's colors
     randomTextView.backgroundColor = ComplementaryColorOf(randomButton.backgroundColor);
     randomTextView.textColor = ContrastColorOf(randomTextView.backgroundColor, NO);
     
     */
}

- (IBAction)randomizeNavigationBar:(id)sender {
    
    //Randomize colors
    self.navigationController.navigationBar.barTintColor = [UIColor randomFlatColor];
    [self setNeedsStatusBarAppearanceUpdate];
    
    //Color all navigation items accordingly to new barTintColor
    self.navigationController.navigationBar.tintColor = [UIColor colorWithContrastingBlackOrWhiteColorOn:self.navigationController.navigationBar.barTintColor isFlat:NO];
    
    //Color titleLabel's textColor accordingly to new barTintColor
    titleLabel.textColor = [UIColor colorWithContrastingBlackOrWhiteColorOn:self.navigationController.navigationBar.barTintColor isFlat:NO];

    
    /* - Shorthand
     
     //Randomize colors
     self.navigationController.navigationBar.barTintColor = RandomFlatColor;
     [self setNeedsStatusBarAppearanceUpdate];
     
     //Color all navigation items accordingly to new barTintColor
     self.navigationController.navigationBar.tintColor = ContrastColorOf(self.navigationController.navigationBar.barTintColor, NO);
     
     //Color titleLabel's textColor accordingly to new barTintColor
     titleLabel.textColor = ContrastColorOf(self.navigationController.navigationBar.barTintColor, NO);
     
     */
}

- (IBAction)randomizeButtonColor:(id)sender {
    
    //Randomize backgroundColor & contrast titleColor
    [randomButton setBackgroundColor:[UIColor randomFlatColor]];
    [randomButton setTitleColor:[UIColor colorWithContrastingBlackOrWhiteColorOn:randomButton.backgroundColor isFlat:NO] forState:UIControlStateNormal];
    
    //Randomize textView's colors
    [randomTextView setBackgroundColor:[UIColor colorWithComplementaryFlatColorOf:randomButton.backgroundColor]];
    [randomTextView setTextColor:[UIColor colorWithContrastingBlackOrWhiteColorOn:randomTextView.backgroundColor isFlat:NO]];

    /* Shorthand
     
     //Randomize backgroundColor & contrast titleColor
     //[randomButton setBackgroundColor:RandomFlatColor];
     //[randomButton setTitleColor:ContrastColorOf(randomButton.backgroundColor, NO) forState:UIControlStateNormal];
     
     //Randomize textView's colors
     [randomTextView setBackgroundColor:ComplementaryColorOf(randomButton.backgroundColor)];
     [randomTextView setTextColor:ContrastColorOf(randomTextView.backgroundColor, NO)];
     
     */
}

- (void)createTitleLabel {
    
    //Create custom label for titleView
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0, 150, 40)];
    titleLabel.text = @"Contrast";
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
