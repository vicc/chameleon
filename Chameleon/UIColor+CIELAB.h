
//  UIColor+CIELAB.h

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

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIColor (CIELAB)


/**
*  Returns the components that make up the color in the XYZ color space.
*
*  @param X     On return, the X component of the color object, specified as a value between 0.0 and 100.0.
*  @param Y     On return, the Y component of the color object, specified as a value between 0.0 and 100.0.
*  @param Z     On return, the Z component of the color object, specified as a value between 0.0 and 100.0.
*  @param alpha On return, the opacity component of the color object, specified as a value between 0.0 and 1.0.
*
*  @return YES if the color could be converted, NO otherwise.
*/
- (BOOL)getValueForX:(CGFloat *)X
           valueForY:(CGFloat *)Y
           valueForZ:(CGFloat *)Z
               alpha:(CGFloat *)alpha;

/**
 *  Returns the components that make up the color in the LAB color space.
 *
 *  @param L     On return, the L component of the color object, specified as a value between 0.0 and 100.0.
 *  @param A     On return, the A component of the color object, specified as a value between -100.0 and 100.0.
 *  @param B     On return, the B component of the color object, specified as a value between -100.0 and 100.0.
 *  @param alpha On return, the opacity component of the color object, specified as a value between 0.0 and 1.0.
 *
 *  @return YES if the color could be converted, NO otherwise.
 */
- (BOOL)getLightness:(CGFloat *)L
           valueForA:(CGFloat *)A
           valueForB:(CGFloat *)B
               alpha:(CGFloat *)alpha;

@end
