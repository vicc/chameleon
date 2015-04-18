
//  NSArray+Chameleon.m

/*
 
 The MIT License (MIT)
 
 Copyright (c) 2014-2015 Vicc Alexander.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 
 */

#import "NSArray+Chameleon.h"
#import "ChameleonMacros.h"
#import "UIColor+CIELAB.h"

@implementation NSArray (Chameleon)

#pragma mark - Chameleon - Public Color Scheme Methods

/*
 Deprecated as of version 1.1.2 Please use the method below this one.
 */

+ (NSArray *)arrayOfColorsWithColorScheme:(ColorScheme)colorScheme for:(UIColor *)color flatScheme:(BOOL)isFlatScheme {
    
    //Extract HSB values from input color
    CGFloat h, s, b, a;
    [color getHue:&h saturation:&s brightness:&b alpha:&a];
    
    //Multiply our values by the max value to convert
    h *= 360;
    s *= 100;
    b *= 100;
    
    //Choose Between Schemes
    switch (colorScheme) {
        case ColorSchemeAnalogous:
            if (isFlatScheme) return [self analogousColorSchemeFromHue:h Saturation:s Brightness:b flat:YES];
            else return [self analogousColorSchemeFromHue:h Saturation:s Brightness:b flat:NO];
        case ColorSchemeComplementary:
            if (isFlatScheme) return [self complementaryColorSchemeFromHue:h Saturation:s Brightness:b flat:YES];
            else return [self complementaryColorSchemeFromHue:h Saturation:s Brightness:b flat:NO];
        case ColorSchemeTriadic:
            if (isFlatScheme) return [self triadicColorSchemeFromHue:h Saturation:s Brightness:b flat:YES];
            else return [self triadicColorSchemeFromHue:h Saturation:s Brightness:b flat:NO];
        default:
            NSAssert(0, @"Oops! Unrecognized color scheme provided as random color.");
    }
}

+ (NSArray *)arrayOfColorsWithColorScheme:(ColorScheme)colorScheme with:(UIColor *)color flatScheme:(BOOL)isFlatScheme {
    
    //Extract HSB values from input color
    CGFloat h, s, b, a;
    [color getHue:&h saturation:&s brightness:&b alpha:&a];
    
    //Multiply our values by the max value to convert
    h *= 360;
    s *= 100;
    b *= 100;

    //Choose Between Schemes
    switch (colorScheme) {
        case ColorSchemeAnalogous:
            if (isFlatScheme) return [self analogousColorSchemeFromHue:h Saturation:s Brightness:b flat:YES];
            else return [self analogousColorSchemeFromHue:h Saturation:s Brightness:b flat:NO];
        case ColorSchemeComplementary:
            if (isFlatScheme) return [self complementaryColorSchemeFromHue:h Saturation:s Brightness:b flat:YES];
            else return [self complementaryColorSchemeFromHue:h Saturation:s Brightness:b flat:NO];
        case ColorSchemeTriadic:
            if (isFlatScheme) return [self triadicColorSchemeFromHue:h Saturation:s Brightness:b flat:YES];
            else return [self triadicColorSchemeFromHue:h Saturation:s Brightness:b flat:NO];
            default:
            NSAssert(0, @"Oops! Unrecognized color scheme provided as random color.");
    }
}

#pragma mark - Chameleon - Internal Color Scheme Methods

//Creates an array with 2 analagous colors on each side of the predefined color
+ (NSArray *)analogousColorSchemeFromHue:(CGFloat)h Saturation:(CGFloat)s Brightness:(CGFloat)b flat:(BOOL)isFlat {
    
    UIColor *firstColor = [UIColor colorWithHue:([[self class] add:-32 to:h])/360
                                          saturation:(s+5)/100
                                           brightness:(b+5)/100
                                          alpha:1.0];

    UIColor *secondColor = [UIColor colorWithHue:[[self class] add:-16 to:h]/360
                                     saturation:(s+5)/100
                                     brightness:(b+9)/100
                                          alpha:1.0];
    
    UIColor *thirdColor = [UIColor colorWithHue:h/360
                                     saturation:s/100
                                     brightness:b/100
                                          alpha:1.0];
    
    UIColor *fourthColor = [UIColor colorWithHue:[[self class] add:16 to:h]/360
                                     saturation:(s+5)/100
                                     brightness:(b+9)/100
                                          alpha:1.0];
    
    UIColor *fifthColor = [UIColor colorWithHue:[[self class] add:32 to:h]/360
                                     saturation:(s+5)/100
                                     brightness:(b+5)/100
                                          alpha:1.0];
    
    if (isFlat) {
        
        return @[[self colorWithFlatVersionOf:firstColor],
                 [self colorWithFlatVersionOf:secondColor],
                 [self colorWithFlatVersionOf:thirdColor],
                 [self colorWithFlatVersionOf:fourthColor],
                 [self colorWithFlatVersionOf:fifthColor]];
        
    }
    
    return @[firstColor, secondColor, thirdColor, fourthColor, fifthColor];
}

// Creates an array of 5 colors, both 90 degrees and 180 degrees away from the predefined colors on both sides
+ (NSArray *)complementaryColorSchemeFromHue:(CGFloat)h Saturation:(CGFloat)s Brightness:(CGFloat)b flat:(BOOL)isFlat {
    
    UIColor *firstColor = [UIColor colorWithHue:h/360
                                     saturation:(s+5)/100
                                     brightness:(b-30)/100
                                          alpha:1.0];
    
    UIColor *secondColor = [UIColor colorWithHue:h/360
                                      saturation:(s-10)/100
                                      brightness:(b+9)/100
                                           alpha:1.0];
    
    UIColor *thirdColor = [UIColor colorWithHue:h/360
                                     saturation:s/100
                                     brightness:b/100
                                          alpha:1.0];
    
    UIColor *fourthColor = [UIColor colorWithHue:[[self class] add:180 to:h]/360
                                     saturation:s/100
                                     brightness:b/100
                                          alpha:1.0];
    
    UIColor *fifthColor = [UIColor colorWithHue:[[self class] add:180 to:h]/360
                                      saturation:(s+20)/100
                                      brightness:(b-30)/100
                                           alpha:1.0];

    
    if (isFlat) {
        
        return @[[self colorWithFlatVersionOf:firstColor],
                 [self colorWithFlatVersionOf:secondColor],
                 [self colorWithFlatVersionOf:thirdColor],
                 [self colorWithFlatVersionOf:fourthColor],
                 [self colorWithFlatVersionOf:fifthColor]];
        
    }
    
    return @[firstColor, secondColor, thirdColor, fourthColor, fifthColor];
   
}

// Creates an array of 5 colors, both 120 degrees and 240 degrees away from the predefined colors on both sides
+ (NSArray *)triadicColorSchemeFromHue:(CGFloat)h Saturation:(CGFloat)s Brightness:(CGFloat)b flat:(BOOL)isFlat  {
    
    UIColor *firstColor = [UIColor colorWithHue:[[self class] add:120 to:h]/360
                                     saturation:(7*s/6)/100
                                     brightness:(b-5)/100
                                          alpha:1.0];
    
    UIColor *secondColor = [UIColor colorWithHue:[[self class] add:120 to:h]/360
                                      saturation:s/100
                                      brightness:(b+9)/100
                                           alpha:1.0];
    
    UIColor *thirdColor = [UIColor colorWithHue:h/360
                                     saturation:s/100
                                     brightness:b/100
                                          alpha:1.0];
    
    UIColor *fourthColor = [UIColor colorWithHue:[[self class] add:240 to:h]/360
                                      saturation:(7*s/6)/100
                                      brightness:(b-5)/100
                                           alpha:1.0];
    
    UIColor *fifthColor = [UIColor colorWithHue:[[self class] add:240 to:h]/360
                                      saturation:s/100
                                      brightness:(b-30)/100
                                           alpha:1.0];
    
    if (isFlat) {
        
        return @[[self colorWithFlatVersionOf:firstColor],
                 [self colorWithFlatVersionOf:secondColor],
                 [self colorWithFlatVersionOf:thirdColor],
                 [self colorWithFlatVersionOf:fourthColor],
                 [self colorWithFlatVersionOf:fifthColor]];
        
    }
    
    return @[firstColor, secondColor, thirdColor, fourthColor, fifthColor];
}

#pragma mark - Helper Methods for Color Schemes

+ (float)add:(float)newValue to:(float)currentValue {
    
    currentValue += newValue;
    
    //Check if currentValue exceeds 360 degrees
    if (currentValue > 360) {
        float offset = currentValue - 360;
        return offset;
    }

    else if (currentValue < 0) {
        return -1 * currentValue;
    }
    
    else {
        return currentValue;
    }
}

+ (UIColor *)colorWithFlatVersionOf:(UIColor *)color {
    
    //Create CGFloats to hold our color values
    CGFloat L, A, B, alpha;
    
    //Get LAB values for our color
    [color getLightness:&L valueForA:&A valueForB:&B alpha:&alpha];
    
    //Find the nearest flat color
    return [self nearestFlatColorForL:L A:A B:B alpha:1.0];
}

//Array of all our colors
+ (NSArray *)flatColors {
    
    return @[FlatBlack, FlatBlackDark, FlatBlue, FlatBlueDark, FlatBrown, FlatBrownDark, FlatCoffee, FlatCoffeeDark, FlatForestGreen, FlatForestGreenDark, FlatGray, FlatGrayDark, FlatGreen, FlatGreenDark, FlatLime, FlatLimeDark, FlatMagenta, FlatMagentaDark, FlatMaroon, FlatMaroonDark, FlatMint, FlatMintDark, FlatNavyBlue, FlatNavyBlueDark, FlatOrange, FlatOrangeDark, FlatPink, FlatPinkDark, FlatPlum, FlatPlumDark, FlatPowderBlue, FlatPowderBlueDark, FlatPurple, FlatPurpleDark, FlatRed, FlatRedDark, FlatSand, FlatSandDark, FlatSkyBlue, FlatSkyBlueDark, FlatTeal, FlatTealDark, FlatWatermelon, FlatWatermelonDark, FlatWhite, FlatWhiteDark, FlatYellow, FlatYellowDark];
}

//Calculate the total sum of differences - Euclidian distance
//Chameleon is now using the CIEDE2000 formula to calculate distances between 2 colors.
//More info: http://en.wikipedia.org/wiki/Color_difference
+ (float)totalSumOfDifferencesFroml1:(CGFloat)L1 l2:(CGFloat)L2 a1:(CGFloat)A1
                                  a2:(CGFloat)A2 b1:(CGFloat)B1 b2:(CGFloat)B2 {
    
    //Get C Values in LCH from LAB Values
    CGFloat C1 = sqrt(pow(A1, 2) + pow(B1, 2));
    CGFloat C2 = sqrt(pow(A2, 2) + pow(B2, 2));
    
    //CIE Weights
    CGFloat KL = 1;
    CGFloat KC = 1;
    CGFloat KH = 1;
    
    //Variables specifically set for CIE:2000
    CGFloat DeltaPrimeL = L2 - L1;
    CGFloat MeanL = ((L1 + L2) / 2);
    CGFloat MeanC = ((C1 + C2) / 2);
    CGFloat A1Prime = A1 + A1 / 2 * (1 - sqrt(pow(MeanC, 7.0) / (pow(MeanC, 7.0) + pow(25.0, 7.0))));
    CGFloat A2Prime = A2 + A2 / 2 * (1 - sqrt(pow(MeanC, 7.0) / (pow(MeanC, 7.0) + pow(25.0, 7.0))));
    CGFloat C1Prime = sqrt(pow(A1Prime, 2) + pow(B1, 2));
    CGFloat C2Prime = sqrt(pow(A2Prime, 2) + pow(B2, 2));
    CGFloat DeltaPrimeC = C1Prime - C2Prime;
    CGFloat DeltaC = C1 - C2;
    CGFloat MeanCPrime = (C1Prime + C2Prime) / 2;
    CGFloat H1Prime = fmodf(atan2(B1, A1Prime), (360.0 * M_PI/180));
    CGFloat H2Prime = fmodf(atan2(B2, A2Prime), (360.0 * M_PI/180));
    
    //Run everything through our △H' Function
    CGFloat hDeltaPrime = 0;
    if (fabs(H1Prime - H2Prime) <= (180.0 * M_PI/180)) {
        
        hDeltaPrime = H2Prime - H1Prime;
        
    } else if (H2Prime <= H1Prime) {
        
        hDeltaPrime = (H2Prime - H1Prime) + ((360.0 * M_PI/180));
        
    } else {
        
        hDeltaPrime = (H2Prime - H1Prime) - ((360.0 * M_PI/180));
    }
    
    CGFloat deltaHPrime = 2 * (sqrt(C1Prime*C2Prime)) * sin(hDeltaPrime/2);
    
    //Get Mean H' Value
    CGFloat MeanHPrime = 0;
    if (fabs(H1Prime-H2Prime) > (180.0 * M_PI/180)) {
        
        MeanHPrime = (H1Prime + H2Prime + (360.0 * M_PI/180)) / 2;
        
    } else {
        
        MeanHPrime = (H1Prime + H2Prime) / 2;
    }
    
    CGFloat T =  1 - 0.17 * cos(MeanHPrime - (30.0 * M_PI/180)) + 0.24 * cos(2 * MeanHPrime)+0.32 * cos(3 * MeanHPrime + (6.0 * M_PI/180)) - 0.20 * cos(4 * MeanHPrime - (63.0 * M_PI/180));
    
    CGFloat SL = 1 + (0.015 * pow((MeanL - 50), 2))/sqrt(20 + pow((MeanL - 50), 2));
    CGFloat SC = 1 + 0.045 * MeanCPrime;
    CGFloat SH = 1 + 0.015 * MeanCPrime * T;
    
    CGFloat RT = -2 * sqrt(pow(MeanCPrime, 7) / (pow(MeanCPrime, 7) + pow(25.0, 7))) * sin((60.0 * M_PI/180)* exp(-1 * pow((MeanCPrime - (275.0 * M_PI/180)) / (25.0 * M_PI/180), 2)));
    
    
    //Get total difference
    CGFloat TotalDifference = sqrt(pow((DeltaPrimeL / (KL * SL)), 2) + pow((DeltaPrimeC / (KC * SC)), 2) + pow((deltaHPrime / (KH * SH)), 2) + RT * (DeltaC / (KC * SC)) * (deltaHPrime / (KH * SH)));
    
    return TotalDifference;
}

+ (UIColor *)nearestFlatColorForL:(CGFloat)l1 A:(CGFloat)a1 B:(CGFloat)b1 alpha:(CGFloat)alpha{
    
    //Keep track of our index
    float index = 0;
    
    //Start with a random big number to make sure the first comparison gets saved.
    float smallestDistance = 1000000;
    float previousDistance = 1000000;
    float currentDistance;
    
    //Our values
    CGFloat l2, a2, b2;
    
    //We're interested in the color with values returning the smallest sum of total differences so we need to cross reference our input color's values with every flat color's values
    for (int i=0; i<[[self flatColors] count]; i++ ) {
        
        //Check that index is not zero
        if (i!=0 ) {
            //Extract LAB values from colors in array and store it as the previous index
            [[self flatColors][i - 1] getLightness:&l2 valueForA:&a2 valueForB:&b2 alpha:nil];
            
            previousDistance = [self totalSumOfDifferencesFroml1:l1 l2:l2
                                                              a1:a1 a2:a2
                                                              b1:b1 b2:b2];
        }
        
        //Extract LAB values from colors in array and store it as the current index
        [[self flatColors][i] getLightness:&l2 valueForA:&a2 valueForB:&b2 alpha:nil];
        
        currentDistance = [self totalSumOfDifferencesFroml1:l1 l2:l2
                                                         a1:a1 a2:a2
                                                         b1:b1 b2:b2];
        
        //We're only interested in the smallest difference
        if (currentDistance < previousDistance) {
            if (currentDistance < smallestDistance) {
                smallestDistance = currentDistance;
                index = i;
            }
        }
    }
    
    
    //Collect the RGB Values of the color where the smallest difference was found
    CGFloat red, green, blue;
    [[[self flatColors] objectAtIndex:index] getRed:&red green:&green blue:&blue alpha:nil];
    
    //Return the closest flat color
    return rgba(red*255, green*255, blue*255, alpha);
}

@end
