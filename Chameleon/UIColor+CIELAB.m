
//  UIColor+CIELAB.m

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

#import "UIColor+CIELAB.h"
#import "UIColor+Chameleon.h"

@implementation UIColor (LAB)

#pragma mark - Public Getter Methods

- (BOOL)getValueForX:(CGFloat *)X valueForY:(CGFloat *)Y valueForZ:(CGFloat *)Z alpha:(CGFloat *)alpha{
    
    if ([self respondsToSelector:@selector(getRed:green:blue:alpha:)]) {
        
        //Get RGB values from the input color
        CGFloat red = 0, green = 0, blue = 0, alpha1 = 0;
        [self getRed:&red green:&green blue:&blue alpha:&alpha1];
        
        //Run our input color's RGB values through the XYZ algorithm to convert them into XYZ values
        NSArray *XYZValues = [self arrayOfXYZValuesForR:red G:green B:blue A:alpha1];
        *X = [XYZValues[0] floatValue];
        *Y = [XYZValues[1] floatValue];
        *Z = [XYZValues[2] floatValue];
        *alpha = [XYZValues[3] floatValue];
        
        return YES;
    }
    
    return NO;
}

- (BOOL)getLightness:(CGFloat *)L valueForA:(CGFloat *)A valueForB:(CGFloat *)B alpha:(CGFloat *)alpha {
    
    if ([self respondsToSelector:@selector(getRed:green:blue:alpha:)]) {
        
        //Get RGB values from the input color
        CGFloat red = 0, green = 0, blue = 0, alpha1 = 0;
        [self getRed:&red green:&green blue:&blue alpha:&alpha1];
        
        //Run our input color's RGB values through the XYZ algorithm to convert them into XYZ values
        NSArray *XYZValues = [self arrayOfXYZValuesForR:red G:green B:blue A:alpha1];
        CGFloat X = [XYZValues[0] floatValue];
        CGFloat Y = [XYZValues[1] floatValue];
        CGFloat Z = [XYZValues[2] floatValue];
        
        //Run our new XYZ values through our LAB algorithm to convert them into LAB values
        NSArray *LABValues = [self arrayOfLABValuesForX:X Y:Y Z:Z alpha:alpha1];
        *L = [LABValues[0] floatValue];
        *A = [LABValues[1] floatValue];
        *B = [LABValues[2] floatValue];
        
        return YES;
    }
    
    return NO;
}

#pragma mark - Internal Helper Methods

- (NSArray *)arrayOfXYZValuesForR:(CGFloat)red G:(CGFloat)green B:(CGFloat)blue A:(CGFloat)alpha {
    
    /*
     Let's begin by converting from RGB to sRGB.
     We're going to use the Reverse Transformation Equation.
     http://en.wikipedia.org/wiki/SRGB
     */
    
    void (^sRGB)(CGFloat *C);
    sRGB = ^(CGFloat *C) {
        if (*C > 0.04045) {
            *C = pow(((*C + 0.055)/ (1 + 0.055)), 2.40);
        } else {
            *C /= 12.92;
        }
    };
    
    sRGB(&red);
    sRGB(&green);
    sRGB(&blue);
    
    /*
     Now we're going to convert to XYZ values, using a matrix multiplication of the linear values
     http://upload.wikimedia.org/math/4/3/3/433376fc18cccd887758beffb7e7c625.png
     */
    
    CGFloat X = (red * 0.4124) + (green * 0.3576) + (blue * 0.1805);
    CGFloat Y = (red * 0.2126) + (green * 0.7152) + (blue * 0.0722);
    CGFloat Z = (red * 0.0193) + (green * 0.1192) + (blue * 0.9505);
    
    X *= 100;
    Y *= 100;
    Z *= 100;
    
    return @[@(X), @(Y), @(Z), @(alpha)];
}

- (NSArray *)arrayOfLABValuesForX:(CGFloat)X Y:(CGFloat)Y Z:(CGFloat)Z alpha:(CGFloat)alpha {
    
    /*
     The corresponding original XYZ values are such that white is D65 with unit luminance (X,Y,Z = 0.9505, 1.0000, 1.0890).
     Calculations are also to assume the 2° standard colorimetric observer.
     D65: http://en.wikipedia.org/wiki/CIE_Standard_Illuminant_D65
     Standard Colorimetric Observer: http://en.wikipedia.org/wiki/Standard_colorimetric_observer#CIE_standard_observer
     
     Since we mutiplied our XYZ values by 100 to produce a percentage we should also multiply our unit luminance values by 100.
     */
    
    X /= (0.9505 * 100);
    Y /= (1.0000 * 100);
    Z /= (1.0890 * 100);
    
    /*
     Next we need to use the forward transformation function for CIELAB-CIEXYZ conversions
     Function: http://upload.wikimedia.org/math/e/5/1/e513d25d50d406bfffb6ed3c854bd8a4.png
     */
    
    void (^XYZtoLAB)(CGFloat *f);
    XYZtoLAB = ^(CGFloat *f) {
        if ((*f > pow((6.0/29.0), 3.0)) ) {
            *f = pow(*f, 1.0/3.0);
        } else {
            *f = (1/3)*pow((29.0/6.0), 2.0) * *f + 4/29.0;
        }
    };
    
    XYZtoLAB(&X);
    XYZtoLAB(&Y);
    XYZtoLAB(&Z);
    
    /*
     Next we get our LAB values using the following equations and the results from the function above
     http://upload.wikimedia.org/math/0/0/6/006164b74314e2fdcdc34ac9d0aa6fe4.png
     */
    
    CGFloat L = (116 * Y) - 16;
    CGFloat A = 500 * (X - Y);
    CGFloat B = 200 * (Y - Z);
    
    
    return @[@(L), @(A), @(B), @(alpha)];
}

@end