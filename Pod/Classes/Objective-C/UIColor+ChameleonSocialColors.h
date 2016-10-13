
//  UIColor+ChameleonSocialColors.h

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

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (ChameleonSocialColors)

#pragma mark - Social Colors

#if UIKIT_DEFINE_AS_PROPERTIES

/**
 *  Returns Twitter's primary color whose HSB values are 0.55, 0.7, 1.00 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *twitterColor;

/**
 *  Returns Facebook's primary color whose HSB values are 0.60, 0.74, 0.62 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *facebookColor;

/**
 *  Returns Tumblr's primary color whose HSB values are 0.59, 0.60, 0.38 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *tumblrColor;

/**
 *  Returns Pinterest's primary color whose HSB values are 0.01, 0.79, 0.81 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *pinterestColor;

/**
 *  Returns Google+'s primary color whose HSB values are 0.01, 0.90, 0.88 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *googlePlusColor;

/**
 *  Returns LinkedIn's primary color whose HSB values are 0.57, 0.74, 0.74 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *linkedInColor;

/**
 *  Returns Instagram's primary color whose HSB values are 0.56, 0.85, 0.54 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *instagramColor;

/**
 *  Returns Dropbox's primary color whose HSB values are 0.57, 0.85, 0.89 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *dropboxColor;

/**
 *  Returns GitHub's primary color whose HSB values are 0.73, 0.68, 0.47 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *githubColor;

/**
 *  Returns Spotify's primary color whose HSB values are 0.20, 1.0, 0.77 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *spotifyColor;

/**
 *  Returns Soundcloud's primary color whose HSB values are 0.04, 1.0, 1.0 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *soundcloudColor;

/**
 *  Returns Dribbble's primary color whose HSB values are 0.93, 0.64, 0.96 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *dribbbleColor;

/**
 *  Returns Snapchat's primary color whose HSB values are 0.16, 1.0, 1.0 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *snapchatColor;

/**
 *  Returns Vine's primary color whose HSB values are 0.45, 1.0, 0.86 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *vineColor;

/**
 *  Returns Foursquares's primary color whose HSB values are 0.95, 071, 0.98 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *foursquareColor;

/**
 *  Returns YouTube's primary color whose HSB values are 0.01, 078, 0.88 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *youtubeColor;

/**
 *  Returns Xing's primary color whose HSB values are 0.49, 0.72, 0.40 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *xingColor;

/**
 *  Returns Periscope's primary color whose HSB values are 0.54, 0.67, 0.0 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
@property(class, nonatomic, readonly) UIColor *periscopeColor;

#else

/**
 *  Returns Twitter's primary color whose HSB values are 0.55, 0.7, 1.00 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)twitterColor;

/**
 *  Returns Facebook's primary color whose HSB values are 0.60, 0.74, 0.62 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)facebookColor;

/**
 *  Returns Tumblr's primary color whose HSB values are 0.59, 0.60, 0.38 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)tumblrColor;

/**
 *  Returns Pinterest's primary color whose HSB values are 0.01, 0.79, 0.81 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)pinterestColor;

/**
 *  Returns Google+'s primary color whose HSB values are 0.01, 0.90, 0.88 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)googlePlusColor;

/**
 *  Returns LinkedIn's primary color whose HSB values are 0.57, 0.74, 0.74 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)linkedInColor;

/**
 *  Returns Instagram's primary color whose HSB values are 0.56, 0.85, 0.54 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)instagramColor;

/**
 *  Returns Dropbox's primary color whose HSB values are 0.57, 0.85, 0.89 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)dropboxColor;

/**
 *  Returns GitHub's primary color whose HSB values are 0.73, 0.68, 0.47 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)githubColor;

/**
 *  Returns Spotify's primary color whose HSB values are 0.20, 1.0, 0.77 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)spotifyColor;

/**
 *  Returns Soundcloud's primary color whose HSB values are 0.04, 1.0, 1.0 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)soundcloudColor;

/**
 *  Returns Dribbble's primary color whose HSB values are 0.93, 0.64, 0.96 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)dribbbleColor;

/**
 *  Returns Snapchat's primary color whose HSB values are 0.16, 1.0, 1.0 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)snapchatColor;

/**
 *  Returns Vine's primary color whose HSB values are 0.45, 1.0, 0.86 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)vineColor;

/**
 *  Returns Foursquares's primary color whose HSB values are 0.95, 071, 0.98 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)foursquareColor;

/**
 *  Returns YouTube's primary color whose HSB values are 0.01, 078, 0.88 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)youtubeColor;

/**
 *  Returns Xing's primary color whose HSB values are 0.49, 0.72, 0.40 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)xingColor;

/**
 *  Returns Periscope's primary color whose HSB values are 0.54, 0.67, 0.0 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)periscopeColor;

#endif

@end

NS_ASSUME_NONNULL_END
