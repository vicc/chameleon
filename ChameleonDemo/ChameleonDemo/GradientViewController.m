//
//  GradientViewController.m
//  ChameleonDemo
//
//  Created by Vicc Alexander on 8/21/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import "GradientViewController.h"

@implementation GradientViewController
@synthesize colorButton1, colorButton2, topToBottomGradientLabel, leftToRightGradientLabel, radialGradientLabel;

- (void)viewDidLoad {
    
    [super viewDidLoad];

    //Make buttons into circles
    colorButton1.layer.cornerRadius = colorButton1.bounds.size.width/2;
    colorButton2.layer.cornerRadius = colorButton2.bounds.size.width/2;
    ;
}

- (IBAction)randomizeColor1 {

    colorButton1.backgroundColor = [UIColor randomFlatColor];
    [colorButton1 setTitleColor:[UIColor colorWithContrastingBlackOrWhiteColorOn:colorButton1.backgroundColor isFlat:NO] forState:UIControlStateNormal];
    
    [self updateGradientColors];
}

- (IBAction)randomizeColor2 {
    
    colorButton2.backgroundColor = [UIColor randomFlatColor];
    [colorButton2 setTitleColor:[UIColor colorWithContrastingBlackOrWhiteColorOn:colorButton2.backgroundColor isFlat:NO] forState:UIControlStateNormal];
    
    [self updateGradientColors];
}

- (void)updateGradientColors {
    
    //Top to Bottom Gradient Color
    topToBottomGradientLabel.backgroundColor = [UIColor colorWithGradientStyle:UIGradientStyleTopToBottom
                                                                     withFrame:topToBottomGradientLabel.bounds
                                                                     andColors:@[colorButton1.backgroundColor, colorButton2.backgroundColor]];
    
    topToBottomGradientLabel.textColor = [UIColor colorWithContrastingBlackOrWhiteColorOn:topToBottomGradientLabel.backgroundColor isFlat:NO];

    /*
     Shorthand:
     
     topToBottomGradientLabel.backgroundColor = GradientColor(UIGradientStyleTopToBottom, topToBottomGradientLabel.bounds, (@[colorButton1.backgroundColor, colorButton2.backgroundColor]));
     
     // Make sure to wrap NSArray literals in a set of paranthesis --> Correct: (@[]) | Wrong: @[]
     
     */
    
    //Left to Right Gradient Color
    leftToRightGradientLabel.backgroundColor = [UIColor colorWithGradientStyle:UIGradientStyleLeftToRight
                                                                     withFrame:leftToRightGradientLabel.bounds
                                                                     andColors:@[colorButton1.backgroundColor, colorButton2.backgroundColor]];
    
    leftToRightGradientLabel.textColor = [UIColor colorWithContrastingBlackOrWhiteColorOn:leftToRightGradientLabel.backgroundColor isFlat:NO];
    
    
    
    //Radial Gradient Color
    radialGradientLabel.backgroundColor = [UIColor colorWithGradientStyle:UIGradientStyleRadial withFrame:radialGradientLabel.bounds andColors:@[colorButton1.backgroundColor, colorButton2.backgroundColor]];
    
    radialGradientLabel.textColor = [UIColor colorWithContrastingBlackOrWhiteColorOn:radialGradientLabel.backgroundColor isFlat:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
