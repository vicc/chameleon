
//  UIColor+Chameleon.m

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

#import "UIColor+Chameleon.h"

@implementation UIColor (Chameleon)

#pragma mark - Chameleon - Light Shades

+ (UIColor *)flatBlackColor {
    return rgb(43, 43, 43);
}

+ (UIColor *)flatBlueColor {
    return rgb(80, 101, 161);
}

+ (UIColor *)flatBrownColor {
    return rgb(94, 69, 52);
}

+ (UIColor *)flatCoffeeColor {
    return rgb(163, 134, 113);
}

+ (UIColor *)flatForestGreenColor {
    return rgb(52, 95, 65);
}

+ (UIColor *)flatGrayColor {
    return rgb(149, 165, 166);
}

+ (UIColor *)flatGreenColor {
    return rgb(46, 204, 113);
}

+ (UIColor *)flatLimeColor {
    return rgb(165, 198, 59);
}

+ (UIColor *)flatMagentaColor {
    return rgb(155, 89, 182);
}

+ (UIColor *)flatMaroonColor {
    return rgb(121, 48, 42);
}

+ (UIColor *)flatMintColor {
    return rgb(26, 188, 156);
}

+ (UIColor *)flatNavyBlueColor {
    return rgb(52, 73, 94);
}

+ (UIColor *)flatOrangeColor {
    return rgb(230, 126, 34);
}

+ (UIColor *)flatPinkColor {
    return rgb(245, 110, 166);
}

+ (UIColor *)flatPlumColor {
    return rgb(94, 52, 94);
}

+ (UIColor *)flatPowderBlueColor {
    return rgb(172, 196, 253);
}

+ (UIColor *)flatPurpleColor {
    return rgb(116, 94, 197);
}

+ (UIColor *)flatRedColor {
    return rgb(231, 76, 60);
}

+ (UIColor *)flatSandColor {
    return rgb(240, 222, 180);
}

+ (UIColor *)flatSkyBlueColor {
    return rgb(52, 152, 219);
}

+ (UIColor *)flatTealColor {
    return rgb(58, 111, 129);
}

+ (UIColor *)flatWatermelonColor {
    return rgb(239, 113, 122);
}

+ (UIColor *)flatWhiteColor {
    return rgb(236, 240, 241);
}

+ (UIColor *)flatYellowColor {
    return rgb(255, 205, 2);
}

#pragma mark - Chameleon - Dark Shades

+ (UIColor *)flatBlackColorDark {
    return rgb(38, 38, 38);
}

+ (UIColor *)flatBlueColorDark {
    return rgb(57, 76, 129);
}

+ (UIColor *)flatBrownColorDark {
    return rgb(80, 59, 44);
}

+ (UIColor *)flatCoffeeColorDark {
    return rgb(142, 114, 94);
}

+ (UIColor *)flatForestGreenColorDark {
    return rgb(45, 80, 54);
}

+ (UIColor *)flatGrayColorDark {
    return rgb(127, 140, 141);
}

+ (UIColor *)flatGreenColorDark {
    return rgb(39, 174, 96);
}

+ (UIColor *)flatLimeColorDark {
    return rgb(142, 176, 33);
}

+ (UIColor *)flatMagentaColorDark {
    return rgb(142, 68, 173);
}

+ (UIColor *)flatMaroonColorDark {
    return rgb(102, 38, 33);
}

+ (UIColor *)flatMintColorDark {
    return rgb(22, 160, 133);
}

+ (UIColor *)flatNavyBlueColorDark {
    return rgb(44, 62, 80);
}

+ (UIColor *)flatOrangeColorDark {
    return rgb(211, 84, 0);
}

+ (UIColor *)flatPinkColorDark {
    return rgb(219, 86, 142);
}

+ (UIColor *)flatPlumColorDark {
    return rgb(79, 43, 79);
}

+ (UIColor *)flatPowderBlueColorDark {
    return rgb(140, 166, 225);
}

+ (UIColor *)flatPurpleColorDark {
    return rgb(91, 72, 162);
}

+ (UIColor *)flatRedColorDark {
    return rgb(192, 57, 43);
}

+ (UIColor *)flatSandColorDark {
    return rgb(213, 194, 149);
}

+ (UIColor *)flatSkyBlueColorDark {
    return rgb(41, 128, 185);
}

+ (UIColor *)flatTealColorDark {
    return rgb(53, 98, 114);
}

+ (UIColor *)flatWatermelonColorDark {
    return rgb(217, 84, 89);
}

+ (UIColor *)flatWhiteColorDark {
    return rgb(189, 195, 199);
}

+ (UIColor *)flatYellowColorDark {
    return rgb(255, 168, 0);
}

#pragma mark - Chameleon - "Color With" Methods

+ (UIColor *)colorWithComplementaryFlatColorOf:(UIColor *)color {
    
    // Convert our RGB Values to HSB
    CGFloat h,s,b,a;
    
    // Check to make sure we have an actual color to work with (Clear returns clear)
    if (![color getHue:&h saturation:&s brightness:&b alpha:&a]) {
        return nil;
    }
    
    //Multiply our value by 360 to convert to degrees
    h *= 360;
    
    // Select a color 180 degrees away on the colorwheel (i.e. for 50 it would be 230).
    h += 180.0f;
    if (h > 360.f) { h -= 360.0f;}
    
    // Convert back to an RGB color
    UIColor *complementaryColor = [UIColor colorWithHue:h/360 saturation:s brightness:b alpha:a];
    
    //Create floats and assign our input color's rgb values to them
    CGFloat red, green, blue, alpha;
    [complementaryColor getRed:&red green:&green blue:&blue alpha:&alpha];
    
    //Multiply our values by 255 to convert
    red *= 255;
    green *= 255;
    blue *= 255;
    
    //Round to the nearest whole number after multiplying
    red = roundf(red);
    green = roundf(green);
    blue = roundf(blue);
    
    //Return complimentary color
    return [self closestFlatColorR:red G:green B:blue];
}

+ (UIColor *)colorWithFlatVersionOf:(UIColor *)color {
    
    //Returns a flat version of the input color
    CGFloat red, green, blue, alpha;
    [color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    // Check to make sure we have an actual color to work with (Clear returns clear)
    if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) {
        return nil;
    }
    
    //Multiply our values by 255 to convert
    red *= 255;
    green *= 255;
    blue *= 255;
    
    //Round to the nearest whole number after multiplying
    red = roundf(red);
    green = roundf(green);
    blue = roundf(blue);
    
    //Return flat color
    return [self closestFlatColorR:red G:green B:blue];
}

+ (UIColor *)colorWithContrastingBlackOrWhiteColorOn:(UIColor *)backgroundColor {
    
    //Calculate Luminance
    CGFloat luminance;
    CGFloat red, green, blue;
    
    //Check for clear or uncalculatable color and assume white - (Clear)
    if (![backgroundColor getRed:&red green:&green blue:&blue alpha:nil]) {
        return [UIColor flatWhiteColor];
    }
    
    // Relative luminance in colorimetric spaces - http://en.wikipedia.org/wiki/Luminance_(relative)
	red *= 0.2126f; green *= 0.7152f; blue *= 0.0722f;
    luminance = red + green + blue;
    
    return (luminance > 0.5f) ? [UIColor flatBlackColorDark] : [UIColor flatWhiteColor];
}

#pragma mark - Chameleon - Random Color Methods

+ (UIColor *)randomFlatColor {
    
    //Number of colors to choose from
    const NSInteger numberOfPossibleColors = 48;
    
    //Chose one of those colors at random
    u_int32_t randomColorChosen = arc4random_uniform(numberOfPossibleColors);
    
    //Assign a random color based on randomColorChosen
    UIColor *randomColor;
    switch (randomColorChosen) {
        case 0:
            randomColor = [self flatBlackColor];
            break;
        case 1:
            randomColor = [self flatBlackColorDark];
            break;
        case 2:
            randomColor = [self flatSkyBlueColor];
            break;
        case 3:
            randomColor = [self flatSkyBlueColorDark];
            break;
        case 4:
            randomColor = [self flatBrownColor];
            break;
        case 5:
            randomColor = [self flatBrownColorDark];
            break;
        case 6:
            randomColor = [self flatForestGreenColor];
            break;
        case 7:
            randomColor = [self flatForestGreenColorDark];
            break;
        case 8:
            randomColor = [self flatGrayColor];
            break;
        case 9:
            randomColor = [self flatGrayColorDark];
            break;
        case 10:
            randomColor = [self flatGreenColor];
            break;
        case 11:
            randomColor = [self flatGreenColorDark];
            break;
        case 12:
            randomColor = [self flatMagentaColor];
            break;
        case 13:
            randomColor = [self flatMagentaColorDark];
            break;
        case 14:
            randomColor = [self flatMintColor];
            break;
        case 15:
            randomColor = [self flatMintColorDark];
            break;
        case 16:
            randomColor = [self flatNavyBlueColor];
            break;
        case 17:
            randomColor = [self flatNavyBlueColorDark];
            break;
        case 18:
            randomColor = [self flatOrangeColor];
            break;
        case 19:
            randomColor = [self flatOrangeColorDark];
            break;
        case 20:
            randomColor = [self flatPinkColor];
            break;
        case 21:
            randomColor = [self flatPinkColorDark];
            break;
        case 22:
            randomColor = [self flatPurpleColor];
            break;
        case 23:
            randomColor = [self flatPurpleColorDark];
            break;
        case 24:
            randomColor = [self flatRedColor];
            break;
        case 25:
            randomColor = [self flatRedColorDark];
            break;
        case 26:
            randomColor = [self flatSandColor];
            break;
        case 27:
            randomColor = [self flatSandColorDark];
            break;
        case 28:
            randomColor = [self flatWhiteColor];
            break;
        case 29:
            randomColor = [self flatWhiteColorDark];
            break;
        case 30:
            randomColor = [self flatYellowColor];
            break;
        case 31:
            randomColor = [self flatYellowColorDark];
            break;
        case 32:
            randomColor = [self flatPlumColor];
            break;
        case 33:
            randomColor = [self flatPlumColorDark];
            break;
        case 34:
            randomColor = [self flatMaroonColor];
            break;
        case 35:
            randomColor = [self flatMaroonColorDark];
            break;
        case 36:
            randomColor = [self flatWatermelonColor];
            break;
        case 37:
            randomColor = [self flatWatermelonColorDark];
            break;
        case 38:
            randomColor = [self flatCoffeeColor];
            break;
        case 39:
            randomColor = [self flatCoffeeColorDark];
            break;
        case 40:
            randomColor = [self flatTealColor];
            break;
        case 41:
            randomColor = [self flatTealColorDark];
            break;
        case 42:
            randomColor = [self flatLimeColor];
            break;
        case 43:
            randomColor = [self flatLimeColorDark];
            break;
        case 44:
            randomColor = [self flatPowderBlueColor];
            break;
        case 45:
            randomColor = [self flatPowderBlueColorDark];
            break;
        case 46:
            randomColor = [self flatBlueColor];
            break;
        case 47:
            randomColor = [self flatBlueColorDark];
            break;
        default:
            NSAssert(0, @"Oops! Unrecognized color selected as random color.");
            break;
    }
    return randomColor;
}

+ (UIColor *)colorWithRandomFlatColorOfShadeStyle:(ShadeStyle)shadeStyle {
    
    //Number of colors to choose from
    const NSInteger numberOfPossibleColors = 24;
    
    //Chose one of those colors at random
    u_int32_t randomColorChosen = arc4random_uniform(numberOfPossibleColors);
    
    //Assign a random color based on randomColorChosen
    UIColor *randomColor;
    
    //Return a color depending on the specified shade
    switch (shadeStyle) {
        case dark: {
            switch (randomColorChosen) {
                case 0:
                    randomColor = [self flatBlackColorDark];
                    break;
                case 1:
                    randomColor = [self flatSkyBlueColorDark];
                    break;
                case 2:
                    randomColor = [self flatBrownColorDark];
                    break;
                case 3:
                    randomColor = [self flatForestGreenColorDark];
                    break;
                case 4:
                    randomColor = [self flatGrayColorDark];
                    break;
                case 5:
                    randomColor = [self flatGreenColorDark];
                    break;
                case 6:
                    randomColor = [self flatMagentaColorDark];
                    break;
                case 7:
                    randomColor = [self flatMintColorDark];
                    break;
                case 8:
                    randomColor = [self flatNavyBlueColorDark];
                    break;
                case 9:
                    randomColor = [self flatOrangeColorDark];
                    break;
                case 10:
                    randomColor = [self flatPinkColorDark];
                    break;
                case 11:
                    randomColor = [self flatPurpleColorDark];
                    break;
                case 12:
                    randomColor = [self flatRedColorDark];
                    break;
                case 13:
                    randomColor = [self flatSandColorDark];
                    break;
                case 14:
                    randomColor = [self flatWhiteColorDark];
                    break;
                case 15:
                    randomColor = [self flatYellowColorDark];
                    break;
                case 16:
                    randomColor = [self flatPlumColorDark];
                    break;
                case 17:
                    randomColor = [self flatMaroonColorDark];
                    break;
                case 18:
                    randomColor = [self flatWatermelonColorDark];
                    break;
                case 19:
                    randomColor = [self flatCoffeeColorDark];
                    break;
                case 20:
                    randomColor = [self flatTealColorDark];
                    break;
                case 21:
                    randomColor = [self flatLimeColorDark];
                    break;
                case 22:
                    randomColor = [self flatPowderBlueColorDark];
                    break;
                case 23:
                    randomColor = [self flatBlueColorDark];
                    break;
                default:
                    NSAssert(0, @"Oops! Unrecognized color selected as random color.");
                    break;
            } break;
        }
            
        case light:
        default: {
            
            switch (randomColorChosen) {
                case 0:
                    randomColor = [self flatBlackColor];
                    break;
                case 1:
                    randomColor = [self flatSkyBlueColor];
                    break;
                case 2:
                    randomColor = [self flatBrownColor];
                    break;
                case 3:
                    randomColor = [self flatForestGreenColor];
                    break;
                case 4:
                    randomColor = [self flatGrayColor];
                    break;
                case 5:
                    randomColor = [self flatGreenColor];
                    break;
                case 6:
                    randomColor = [self flatMagentaColor];
                    break;
                case 7:
                    randomColor = [self flatMintColor];
                    break;
                case 8:
                    randomColor = [self flatNavyBlueColor];
                    break;
                case 9:
                    randomColor = [self flatOrangeColor];
                    break;
                case 10:
                    randomColor = [self flatPinkColor];
                    break;
                case 11:
                    randomColor = [self flatPurpleColor];
                    break;
                case 12:
                    randomColor = [self flatRedColor];
                    break;
                case 13:
                    randomColor = [self flatSandColor];
                    break;
                case 14:
                    randomColor = [self flatWhiteColor];
                    break;
                case 15:
                    randomColor = [self flatYellowColor];
                    break;
                case 16:
                    randomColor = [self flatPlumColor];
                    break;
                case 17:
                    randomColor = [self flatMaroonColor];
                    break;
                case 18:
                    randomColor = [self flatWatermelonColor];
                    break;
                case 19:
                    randomColor = [self flatCoffeeColor];
                    break;
                case 20:
                    randomColor = [self flatTealColor];
                    break;
                case 21:
                    randomColor = [self flatLimeColor];
                    break;
                case 22:
                    randomColor = [self flatPowderBlueColor];
                    break;
                case 23:
                    randomColor = [self flatBlueColor];
                    break;
                default:
                    NSAssert(0, @"Oops! Unrecognized color selected as random color.");
                    break;
            } break;
        }
    }

    return randomColor;
}

#pragma mark - Chameleon Internal Methods

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
