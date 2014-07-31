
//  NSArray+Chameleon.m

/*
 
 The MIT License (MIT)
 
 Copyright (c) 2014 Vicc Alexander.
 
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

@implementation NSArray (Chameleon)

#pragma mark - Chameleon - Public Color Scheme Methods

+ (NSArray *)arrayOfColorsWithColorScheme:(ColorScheme)colorScheme for:(UIColor *)color flatScheme:(BOOL)isFlatScheme {
    
    //Splt our color int HSB values
    CGFloat h, s, b, a;
    [color getHue:&h saturation:&s brightness:&b alpha:&a];
    
    // Check to make sure we have an actual color to work with (Clear returns clear)
    if (![color getHue:&h saturation:&s brightness:&b alpha:&a]) {
        return nil;
    }
    
    //Multiply our values by the highest possible value to convert
    h *= 360;
    s *= 100;
    b *= 100;
    
    //Round to the nearest whole number after multiplying
    h = roundf(h);
    s = roundf(s);
    b = roundf(b);

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

//Creates an array with 2 analagous colors on both sides of the predefined color
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

// Creates an array of 5 colors, both 90 degrees and 180 deggres away from the predefined colors on both sides
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
                                      saturation:(s+20)/100
                                      brightness:(b-30)/100
                                           alpha:1.0];
    
    UIColor *fifthColor = [UIColor colorWithHue:[[self class] add:180 to:h]/360
                                     saturation:s/100
                                     brightness:b/100
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

// Creates an array of 5 colors, both 120 degrees and 240 deggres away from the predefined colors on both sides
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
                                      saturation:s/100
                                      brightness:(b-30)/100
                                           alpha:1.0];
    
    UIColor *fifthColor = [UIColor colorWithHue:[[self class] add:240 to:h]/360
                                     saturation:(7*s/6)/100
                                     brightness:(b-5)/100
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

// Array of All Red Values of Every Flat Color
+ (NSArray *)redValues {
    return @[@38, @52, @94, @52, @149, @46, @26, @52, @230, @155, @231, @255, @236, @43, @41, @80, @45, @127, @39, @22, @44, @211, @142, @192, @189, @255, @240, @213, @244, @212, @116, @91, @94, @79, @121, @102, @239, @217, @163, @142, @58, @53, @165, @142, @172, @140, @80, @57];
}

// Array of All Green Values of Every Flat Color
+ (NSArray *)greenValues {
    return @[@38, @152, @69, @95, @165, @204, @188, @73, @126, @89, @76, @205, @240, @43, @128, @59, @80, @140, @174, @160, @62, @84, @68, @57, @195, @168, @222, @194, @124, @92, @94, @72, @52, @43, @48, @38, @113, @84, @134, @114, @111, @98, @198, @176, @196, @166, @101, @76];
}

// Array of All Blue Values of Every Flat Color
+ (NSArray *)blueValues {
    return @[@38, @219, @52, @65, @166, @113, @156, @94, @34, @182, @60, @2, @241, @43, @185, @44, @54, @141, @96, @133, @80, @0, @173, @43, @199, @0, @180, @149, @195, @158, @197, @162, @94, @79, @42, @33, @122, @89, @113, @94, @129, @114, @59, @33, @253, @225, @161, @129];
}

+ (UIColor *)colorWithFlatVersionOf:(UIColor *)color {
    
    //Returns a flat version of the input color
    CGFloat red, green, blue, alpha;
    [color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    //Convert into 0-255 Scale
    red *= 255;
    green *= 255;
    blue *= 255;
    
    //Round to the nearest whole number after multiplying
    red = roundf(red);
    green = roundf(green);
    blue = roundf(blue);
    
    return [self closestFlatColorR:red G:green B:blue];
}

//Compare flat color values to the input color's values
+ (UIColor *)closestFlatColorR:(float)r1 G:(float)g1 B:(float)b1 {
    
    //Keep track of our index
    float index = 0;
    
    //Start with a randombig number to make sure the first comparison gets saved.
    float smallestDistance = 1000000;
    float previousDistance = 1000000;
    float currentDistance;
    
    //We're interested in the color with values returning the smallest sum of total differences so we need to cross reference our input color's values with every flat color's value
    for (int i=0; i<[[self redValues] count]; i++ ) {
        
        if (i!=0 ) {
            previousDistance = [self totalSumOfDifferencesFromr1:r1 r2:[[self redValues][i - 1] floatValue]
                                                              g1:g1 g2:[[self greenValues][i - 1] floatValue]
                                                              b1:b1 b2:[[self blueValues][i - 1] floatValue]];
        }
        
        currentDistance = [self totalSumOfDifferencesFromr1:r1 r2:[[[self redValues] objectAtIndex:i] floatValue]
                                                         g1:g1 g2:[[[self greenValues] objectAtIndex:i] floatValue]
                                                         b1:b1 b2:[[[self blueValues] objectAtIndex:i] floatValue]];
        
        //We're only interested in the smallest difference
        if (currentDistance < previousDistance) {
            if (currentDistance < smallestDistance) {
                smallestDistance = currentDistance;
                index = i;
            }
        }
    }
    
    //Collect the RGB Values of the color where the smallest difference was returned
    float newRed = [[[self redValues] objectAtIndex:index] floatValue];
    float newGreen = [[[self greenValues] objectAtIndex:index] floatValue];
    float newBlue = [[[self blueValues] objectAtIndex:index] floatValue];
    
    //Return the closest flat color
    return rgb(newRed, newGreen, newBlue);
}

//Calculate the total sum of differences
+ (float)totalSumOfDifferencesFromr1:(float)r1 r2:(float)r2 g1:(float)g1 g2:(float)g2 b1:(float)b1 b2:(float)b2 {
    
    /*
     We could also use a weighted approach (CIE94), but since we're rounding off the closest flat color it probably won't matter.
     //float d = sqrt(powf(((r2-r1)*0.3),2)+powf(((g2-g1)*0.59),2)+powf(((b2-b1)*0.11),2));
     More info: http://bit.ly/CIE94colordistance
     */
    
    float d = sqrt(powf((r2-r1),2)+powf((g2-g1),2)+powf((b2-b1),2));
    return d;
}

@end
