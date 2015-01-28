//
//  Row1ViewController.m
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import "Row1ViewController.h"

@implementation Row1ViewController

@synthesize randomColorButton, complementaryColorButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Assign random flat color to colorButton's backgroundColor
    randomColorButton.backgroundColor = [UIColor randomFlatColor];
    
    //Shorthand
    //randomColorButton.backgroundColor = RandomFlatColor;
    
    //Assign the complementary color of colorButton's backgroundColor to complementaryColorView's backgroundColor
    complementaryColorButton.backgroundColor = [UIColor colorWithComplementaryFlatColorOf:randomColorButton.backgroundColor];
    
    //Shorthand
    //complementaryColorButton.backgroundColor = ComplementaryColorOf(randomColorButton.backgroundColor);
}

- (IBAction)randomize:(id)sender {
    
    //Assign New Random Flat Color to colorButton
    randomColorButton.backgroundColor = [UIColor randomFlatColor];
    
    //Shorthand
    //randomColorButton.backgroundColor = RandomFlatColor;
    
    //Assign new complementary color of colorButton's backgroundColor to complementaryColorView's backgroundColor
    complementaryColorButton.backgroundColor = [UIColor colorWithComplementaryFlatColorOf:randomColorButton.backgroundColor];

    //Shorthand
    //complementaryColorButton.backgroundColor = ComplementaryColorOf(randomColorButton.backgroundColor);  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
