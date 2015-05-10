//
//  AnalogousViewController.m
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import "AnalogousViewController.h"

@implementation AnalogousViewController

@synthesize flatArray, nonFlatArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Set backgroundColor for our mainView
    self.mainView.backgroundColor = [UIColor randomFlatColor];

    //Flat Array
    flatArray = [[NSMutableArray alloc] init];
    [flatArray addObjectsFromArray:[NSArray arrayOfColorsWithColorScheme:ColorSchemeAnalogous with:self.mainView.backgroundColor flatScheme:YES]];
    
    //Non-flat array
    nonFlatArray = [[NSMutableArray alloc] init];
    [nonFlatArray addObjectsFromArray:[NSArray arrayOfColorsWithColorScheme:ColorSchemeAnalogous with:self.mainView.backgroundColor flatScheme:NO]];
    
    /* - Shorthand Version
     
     //Set backgroundColor for our mainView
     self.mainView.backgroundColor = RandomFlatColor;
     
     //Flat Array
     flatArray = [[NSMutableArray alloc] init];
     [flatArray addObjectsFromArray:ColorScheme(ColorSchemeAnalogous, self.mainView.backgroundColor, YES)];
     
     //Non-flat array
     nonFlatArray = [[NSMutableArray alloc] init];
     [flatArray addObjectsFromArray:ColorScheme(ColorSchemeAnalogous, self.mainView.backgroundColor, NO)];
     
     */
    
    //Set BackgroundColors using colors from arrays
    self.view1.backgroundColor = flatArray[0];
    self.view2.backgroundColor = flatArray[1];
    self.view3.backgroundColor = flatArray[2];
    self.view4.backgroundColor = flatArray[3];
    self.view5.backgroundColor = flatArray[4];
    
    self.view1n.backgroundColor = nonFlatArray[0];
    self.view2n.backgroundColor = nonFlatArray[1];
    self.view3n.backgroundColor = nonFlatArray[2];
    self.view4n.backgroundColor = nonFlatArray[3];
    self.view5n.backgroundColor = nonFlatArray[4];
}

- (IBAction)randomize:(id)sender {
    
    //Reset backgroundColor for our mainView
    self.mainView.backgroundColor = [UIColor randomFlatColor];
    
    //Flat Array
    [flatArray replaceObjectsInRange:NSMakeRange(0, 4) withObjectsFromArray:[NSArray arrayOfColorsWithColorScheme:ColorSchemeAnalogous with:self.mainView.backgroundColor flatScheme:YES]];
    
    //Non-flat array
    [nonFlatArray replaceObjectsInRange:NSMakeRange(0, 4) withObjectsFromArray:[NSArray arrayOfColorsWithColorScheme:ColorSchemeAnalogous with:self.mainView.backgroundColor flatScheme:NO]];
    
    /* - Shorthand
    
    //Reset backgroundColor for our mainView
     self.mainView.backgroundColor = RandomFlatColor;
    
    //Flat Array
    [flatArray replaceObjectsInRange:NSMakeRange(0, 4) withObjectsFromArray:ColorScheme(ColorSchemeAnalogous, self.mainView.backgroundColor, YES)];
    
    //Non-flat array
    [nonFlatArray replaceObjectsInRange:NSMakeRange(0, 4) withObjectsFromArray:ColorScheme(ColorSchemeAnalogous, self.mainView.backgroundColor, NO)];
    
    */

    //Set BackgroundColors using colors from arrays
    self.view1.backgroundColor = flatArray[0];
    self.view2.backgroundColor = flatArray[1];
    self.view3.backgroundColor = flatArray[2];
    self.view4.backgroundColor = flatArray[3];
    self.view5.backgroundColor = flatArray[4];
    
    self.view1n.backgroundColor = nonFlatArray[0];
    self.view2n.backgroundColor = nonFlatArray[1];
    self.view3n.backgroundColor = nonFlatArray[2];
    self.view4n.backgroundColor = nonFlatArray[3];
    self.view5n.backgroundColor = nonFlatArray[4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
