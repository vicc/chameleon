
//  UIColor+Chameleon.h

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

#import <UIKit/UIKit.h>

//Quick & Easy Shorthand for RGB Colors - The reason we don't import our Macro file is to prevent naming conflicts.
#define rgb(r,g,b) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0]

//Shade Styles Supported By Chameleon
typedef NS_ENUM (NSInteger, ShadeStyle) {
    light = 0,
    dark
};

@interface UIColor (Chameleon)

//Flat Colors - Light Shades
+ (UIColor *)flatBlackColor;
+ (UIColor *)flatBlueColor;
+ (UIColor *)flatBrownColor;
+ (UIColor *)flatCoffeeColor;
+ (UIColor *)flatForestGreenColor;
+ (UIColor *)flatGrayColor;
+ (UIColor *)flatGreenColor;
+ (UIColor *)flatLimeColor;
+ (UIColor *)flatMagentaColor;
+ (UIColor *)flatMaroonColor;
+ (UIColor *)flatMintColor;
+ (UIColor *)flatNavyBlueColor;
+ (UIColor *)flatOrangeColor;
+ (UIColor *)flatPinkColor;
+ (UIColor *)flatPlumColor;
+ (UIColor *)flatPowderBlueColor;
+ (UIColor *)flatPurpleColor;
+ (UIColor *)flatRedColor;
+ (UIColor *)flatSandColor;
+ (UIColor *)flatSkyBlueColor;
+ (UIColor *)flatTealColor;
+ (UIColor *)flatWatermelonColor;
+ (UIColor *)flatWhiteColor;
+ (UIColor *)flatYellowColor;

//Flat Colors - Dark Shades
+ (UIColor *)flatBlackColorDark;
+ (UIColor *)flatBlueColorDark;
+ (UIColor *)flatBrownColorDark;
+ (UIColor *)flatCoffeeColorDark;
+ (UIColor *)flatForestGreenColorDark;
+ (UIColor *)flatGrayColorDark;
+ (UIColor *)flatGreenColorDark;
+ (UIColor *)flatLimeColorDark;
+ (UIColor *)flatMagentaColorDark;
+ (UIColor *)flatMaroonColorDark;
+ (UIColor *)flatMintColorDark;
+ (UIColor *)flatNavyBlueColorDark;
+ (UIColor *)flatOrangeColorDark;
+ (UIColor *)flatPinkColorDark;
+ (UIColor *)flatPlumColorDark;
+ (UIColor *)flatPowderBlueColorDark;
+ (UIColor *)flatPurpleColorDark;
+ (UIColor *)flatRedColorDark;
+ (UIColor *)flatSandColorDark;
+ (UIColor *)flatSkyBlueColorDark;
+ (UIColor *)flatTealColorDark;
+ (UIColor *)flatWatermelonColorDark;
+ (UIColor *)flatWhiteColorDark;
+ (UIColor *)flatYellowColorDark;

//Flat Colors - Special
+ (UIColor *)randomFlatColor;

//Returns a flat color closest to a complimentary color 180 degrees from a specified color
+ (UIColor *)colorWithComplementaryFlatColorOf:(UIColor *)color;

//Returns a flat color closest to the specified color
+ (UIColor *)colorWithFlatVersionOf:(UIColor *)color;

//Returns either a flat black or flat white color depending on the specified color.
//Works best for text where the specific color is usually the background color of the same object.
+ (UIColor *)colorWithContrastingBlackOrWhiteColorOn:(UIColor *)backgroundColor;

//Returns a random flat color with a specific shade style
+ (UIColor *)colorWithRandomFlatColorOfShadeStyle:(ShadeStyle)shadeStyle;

@end
