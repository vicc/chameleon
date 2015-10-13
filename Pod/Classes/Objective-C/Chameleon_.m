//
//  ChameleonInternal.m
//  Chameleon
//
//  Created by Vicc Alexander on 6/4/15.
//  Copyright (c) 2015 Vicc Alexander. All rights reserved.
//

#import "Chameleon_.h"
#import "UILabel+Chameleon.h"
#import "UIButton+Chameleon.h"

@implementation Chameleon

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

+ (void)setGlobalThemeUsingPrimaryColor:(UIColor *)primaryColor
                 withContentStyle:(UIContentStyle)contentStyle {

#if TARGET_OS_IOS
    if (contentStyle == UIContentStyleContrast) {
        
        if ([ContrastColor(primaryColor, YES) isEqual:FlatWhite]) {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        } else {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
        }
        
    } else if (contentStyle == UIContentStyleLight) {
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        
    } else {
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
#endif

    [[self class] customizeBarButtonItemWithPrimaryColor:primaryColor contentStyle:contentStyle];
    [[self class] customizeButtonWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeNavigationBarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizePageControlWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeProgressViewWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeSearchBarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeSegmentedControlWithPrimaryColor:primaryColor withContentStyle:contentStyle];
#if TARGET_OS_IOS
    [[self class] customizeSliderWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeStepperWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeSwitchWithPrimaryColor:primaryColor];
#endif
    [[self class] customizeTabBarWithBarTintColor:FlatWhite andTintColor:primaryColor];
#if TARGET_OS_IOS
    [[self class] customizeToolbarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
#endif
}


+ (void)setGlobalThemeUsingPrimaryColor:(UIColor *)primaryColor
               withSecondaryColor:(UIColor *)secondaryColor
                  andContentStyle:(UIContentStyle)contentStyle {

#if TARGET_OS_IOS
    if (contentStyle == UIContentStyleContrast) {
        
        if ([ContrastColor(primaryColor, YES) isEqual:FlatWhite]) {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        } else {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
        }
        
    } else if (contentStyle == UIContentStyleLight) {
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        
    } else {
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
#endif

    [[self class] customizeBarButtonItemWithPrimaryColor:primaryColor contentStyle:contentStyle];
    [[self class] customizeButtonWithPrimaryColor:primaryColor secondaryColor:secondaryColor withContentStyle:contentStyle];
    [[self class] customizeNavigationBarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizePageControlWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeProgressViewWithPrimaryColor:primaryColor andSecondaryColor:secondaryColor];
    [[self class] customizeSearchBarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeSegmentedControlWithPrimaryColor:primaryColor withContentStyle:contentStyle];
#if TARGET_OS_IOS
    [[self class] customizeSliderWithPrimaryColor:primaryColor andSecondaryColor:secondaryColor];
    [[self class] customizeStepperWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeSwitchWithPrimaryColor:primaryColor andSecondaryColor:secondaryColor];
#endif
    [[self class] customizeTabBarWithBarTintColor:FlatWhite andTintColor:primaryColor];
#if TARGET_OS_IOS
    [[self class] customizeToolbarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
#endif
}

+ (void)setGlobalThemeUsingPrimaryColor:(UIColor *)primaryColor
               withSecondaryColor:(UIColor *)secondaryColor
                    usingFontName:(NSString *)fontName
                  andContentStyle:(UIContentStyle)contentStyle {

#if TARGET_OS_IOS
    if (contentStyle == UIContentStyleContrast) {
        
        if ([ContrastColor(primaryColor, YES) isEqual:FlatWhite]) {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        } else {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
        }
        
    } else if (contentStyle == UIContentStyleLight) {
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        
    } else {
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
#endif
    
    [[UILabel appearance] setSubstituteFontName:fontName];
    [[UIButton appearance] setSubstituteFontName:fontName];
    
    [[self class] customizeNavigationBarWithBarColor:primaryColor textColor:ContrastColor(primaryColor, YES) fontName:fontName fontSize:20 buttonColor:ContrastColor(primaryColor, YES)];
    [[self class] customizeBarButtonItemWithPrimaryColor:primaryColor fontName:fontName fontSize:18 contentStyle:contentStyle];
    [[self class] customizeSegmentedControlWithPrimaryColor:primaryColor withFontName:fontName withFontSize:14 withContentStyle:contentStyle];
    [[self class] customizeButtonWithPrimaryColor:primaryColor secondaryColor:secondaryColor withContentStyle:contentStyle];
    [[self class] customizePageControlWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeProgressViewWithPrimaryColor:primaryColor andSecondaryColor:secondaryColor];
    [[self class] customizeSearchBarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
#if TARGET_OS_IOS
    [[self class] customizeSliderWithPrimaryColor:primaryColor andSecondaryColor:secondaryColor];
    [[self class] customizeStepperWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeSwitchWithPrimaryColor:primaryColor andSecondaryColor:secondaryColor];
#endif
    [[self class] customizeTabBarWithBarTintColor:FlatWhite andTintColor:primaryColor];
#if TARGET_OS_IOS
    [[self class] customizeToolbarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
#endif

    
    /*
     
    if (contentStyle == UIContentStyleContrast) {
        
        if ([ContrastColor(primaryColor, YES) isEqual:FlatWhite]) {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        } else {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
        }
        
    } else if (contentStyle == UIContentStyleLight) {
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        
    } else {
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
    
    [[self class] customizeBarButtonItemWithPrimaryColor:primaryColor fontName:fontName fontSize:18 contentStyle:contentStyle];
    [[self class] customizeButtonWithPrimaryColor:primaryColor fontName:fontName fontSize:17 contentStyle:contentStyle];
    [[self class] customizeLabelWithPrimaryColor:primaryColor fontName:fontName fontSize:18 withContentStyle:contentStyle];
    [[self class] customizePageControlWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeProgressViewWithPrimaryColor:primaryColor andSecondaryColor:secondaryColor];
    [[self class] customizeSearchBarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeSliderWithPrimaryColor:primaryColor andSecondaryColor:secondaryColor];
    [[self class] customizeStepperWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    [[self class] customizeSwitchWithPrimaryColor:primaryColor andSecondaryColor:secondaryColor];
    [[self class] customizeTabBarWithBarTintColor:FlatWhite tintColor:primaryColor fontName:fontName fontSize:11];
    [[self class] customizeToolbarWithPrimaryColor:primaryColor withContentStyle:contentStyle];
    
    */
}

#pragma mark - UIBarButtonItem

+ (void)customizeBarButtonItemWithPrimaryColor:(UIColor *)primaryColor
                                  contentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }

    [[UIBarButtonItem appearance] setTintColor:primaryColor];
#if TARGET_OS_IOS
    [[UIBarButtonItem appearanceWhenContainedIn:[UISearchBar class], nil] setTintColor:contentColor];
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil] setTintColor:contentColor];
    [[UIBarButtonItem appearanceWhenContainedIn:[UIToolbar class], nil] setTintColor:contentColor];
#endif

}

+ (void)customizeBarButtonItemWithPrimaryColor:(UIColor *)primaryColor
                                      fontName:(NSString *)fontName
                                      fontSize:(float)fontSize
                                  contentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UIBarButtonItem appearance] setTintColor:primaryColor];
#if TARGET_OS_IOS
    [[UIBarButtonItem appearanceWhenContainedIn:[UISearchBar class], nil] setTintColor:contentColor];
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil] setTintColor:contentColor];
    [[UIBarButtonItem appearanceWhenContainedIn:[UIToolbar class], nil] setTintColor:contentColor];
    
    if ([UIFont fontWithName:fontName size:fontSize]) {
        [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil] setTitleTextAttributes:@{ NSForegroundColorAttributeName:contentColor,
                                                                NSFontAttributeName:[UIFont fontWithName:fontName size:fontSize]} forState:UIControlStateNormal];
    }
#endif
}

#pragma mark - UIButton

+ (void)customizeButtonWithPrimaryColor:(UIColor *)primaryColor
                       withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UIButton appearance] setTintColor:contentColor];
    [[UIButton appearance] setBackgroundColor:primaryColor];
    

#if TARGET_OS_IOS
    [[UIButton appearanceWhenContainedIn:[UISearchBar class], nil] setTintColor:contentColor];
    [[UIButton appearanceWhenContainedIn:[UISearchBar class], nil] setBackgroundColor:ClearColor];
    
    [[UIButton appearanceWhenContainedIn:[UINavigationBar class], nil] setTintColor:contentColor];
    [[UIButton appearanceWhenContainedIn:[UINavigationBar class], nil] setBackgroundColor:ClearColor];
    
    [[UIButton appearanceWhenContainedIn:[UIToolbar class], nil] setTintColor:contentColor];
    [[UIButton appearanceWhenContainedIn:[UIToolbar class], nil] setBackgroundColor:ClearColor];
    
    [[UIButton appearanceWhenContainedIn:[UIStepper class], nil] setTintColor:primaryColor];
    [[UIButton appearanceWhenContainedIn:[UIStepper class], nil] setBackgroundColor:ClearColor];
#endif
    
    [[UIButton appearance] setTitleShadowColor:ClearColor forState:UIControlStateNormal];
    
    
    
}

+ (void)customizeButtonWithPrimaryColor:(UIColor *)primaryColor
                         secondaryColor:(UIColor *)secondaryColor
                       withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    UIColor *secondaryContentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            secondaryContentColor = ContrastColor(secondaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            secondaryContentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            secondaryContentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            secondaryContentColor = ContrastColor(secondaryColor, NO);
            break;
        }
    }
    
    [[UIButton appearance] setTintColor:secondaryContentColor];
    [[UIButton appearance] setBackgroundColor:secondaryColor];

#if TARGET_OS_IOS
    [[UIButton appearanceWhenContainedIn:[UISearchBar class], nil] setTintColor:contentColor];
    [[UIButton appearanceWhenContainedIn:[UISearchBar class], nil] setBackgroundColor:ClearColor];
    
    [[UIButton appearanceWhenContainedIn:[UINavigationBar class], nil] setTintColor:contentColor];
    [[UIButton appearanceWhenContainedIn:[UINavigationBar class], nil] setBackgroundColor:ClearColor];
    
    [[UIButton appearanceWhenContainedIn:[UIToolbar class], nil] setTintColor:contentColor];
    [[UIButton appearanceWhenContainedIn:[UIToolbar class], nil] setBackgroundColor:ClearColor];
    
    [[UIButton appearanceWhenContainedIn:[UIStepper class], nil] setTintColor:primaryColor];
    [[UIButton appearanceWhenContainedIn:[UIStepper class], nil] setBackgroundColor:ClearColor];
#endif
    
    [[UIButton appearance] setTitleShadowColor:ClearColor forState:UIControlStateNormal];
    
}

#pragma mark - UILabel

+ (void)customizeLabelWithPrimaryColor:(UIColor *)primaryColor
                              fontName:(NSString *)fontName
                              fontSize:(CGFloat)fontSize
                      withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }

#if TARGET_OS_IOS
    [[UILabel appearanceWhenContainedIn:[UINavigationBar class], nil] setTextColor:contentColor];
    [[UILabel appearanceWhenContainedIn:[UIToolbar class], nil] setTextColor:contentColor];
    
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    
    if (font) {
        [[UILabel appearance] setFont:[UIFont fontWithName:fontName size:fontSize]];
        [[UILabel appearanceWhenContainedIn:[UITextField class], nil] setFont:[UIFont fontWithName:fontName size:14]];
        [[UILabel appearanceWhenContainedIn:[UIButton class], nil] setFont:[UIFont fontWithName:fontName size:18]];
    }
#endif
}

#pragma mark - UINavigationBar

+ (void)customizeNavigationBarWithPrimaryColor:(UIColor *)primaryColor
                              withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UINavigationBar appearance] setBarTintColor:primaryColor];
    [[UINavigationBar appearance] setTintColor:contentColor];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:contentColor}];
    [[UINavigationBar appearance] setShadowImage:[UIImage new]];
//    [[UINavigationBar appearance] setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}

+ (void)customizeNavigationBarWithBarColor:(UIColor *)barColor
                                 textColor:(UIColor *)textColor
                               buttonColor:(UIColor *)buttonColor {
    
    [[UINavigationBar appearance] setBarTintColor:barColor];
    [[UINavigationBar appearance] setTintColor:buttonColor];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:textColor}];
    [[UINavigationBar appearance] setShadowImage:[UIImage new]];
//    [[UINavigationBar appearance] setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}

+ (void)customizeNavigationBarWithBarColor:(UIColor *)barColor
                                 textColor:(UIColor *)textColor
                                  fontName:(NSString *)fontName
                                  fontSize:(CGFloat)fontSize
                               buttonColor:(UIColor *)buttonColor {
    
    [[UINavigationBar appearance] setBarTintColor:barColor];
    [[UINavigationBar appearance] setTintColor:buttonColor];
    [[UINavigationBar appearance] setShadowImage:[UIImage new]];
//    [[UINavigationBar appearance] setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    
    if ([UIFont fontWithName:fontName size:fontSize]) {
        [[UINavigationBar appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:textColor, NSFontAttributeName:[UIFont fontWithName:fontName size:fontSize] }];
    }
}

#pragma mark - UIPageControl

+ (void)customizePageControlWithPrimaryColor:(UIColor *)primaryColor
                            withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UIPageControl appearance] setCurrentPageIndicatorTintColor:primaryColor];
    [[UIPageControl appearance] setPageIndicatorTintColor:[primaryColor colorWithAlphaComponent:0.4]];
#if TARGET_OS_IOS
    [[UIPageControl appearanceWhenContainedIn:[UINavigationBar class], nil] setCurrentPageIndicatorTintColor:contentColor];
    [[UIPageControl appearanceWhenContainedIn:[UINavigationBar class], nil] setPageIndicatorTintColor:[contentColor colorWithAlphaComponent:0.4]];
    [[UIPageControl appearanceWhenContainedIn:[UIToolbar class], nil] setCurrentPageIndicatorTintColor:contentColor];
    [[UIPageControl appearanceWhenContainedIn:[UIToolbar class], nil] setPageIndicatorTintColor:[contentColor colorWithAlphaComponent:0.4]];
#endif
}

#pragma mark - UIProgressView

+ (void)customizeProgressViewWithPrimaryColor:(UIColor *)primaryColor
                             withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UIProgressView appearance] setProgressTintColor:primaryColor];
#if TARGET_OS_IOS
    [[UIProgressView appearanceWhenContainedIn:[UINavigationBar class], nil] setProgressTintColor:contentColor];
    [[UIProgressView appearanceWhenContainedIn:[UIToolbar class], nil] setProgressTintColor:contentColor];
#endif
    [[UIProgressView appearance] setTrackTintColor:[UIColor lightGrayColor]];
#if TARGET_OS_IOS
    [[UIProgressView appearanceWhenContainedIn:[UINavigationBar class], nil] setTrackTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
    [[UIProgressView appearanceWhenContainedIn:[UIToolbar class], nil] setTrackTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
#endif
}

+ (void)customizeProgressViewWithPrimaryColor:(UIColor *)primaryColor
                            andSecondaryColor:(UIColor *)secondaryColor {
    
    [[UIProgressView appearance] setProgressTintColor:secondaryColor];
#if TARGET_OS_IOS
    [[UIProgressView appearanceWhenContainedIn:[UINavigationBar class], nil] setProgressTintColor:secondaryColor];
    [[UIProgressView appearanceWhenContainedIn:[UIToolbar class], nil] setProgressTintColor:secondaryColor];
#endif
    [[UIProgressView appearance] setTrackTintColor:[UIColor lightGrayColor]];
#if TARGET_OS_IOS
    [[UIProgressView appearanceWhenContainedIn:[UINavigationBar class], nil] setTrackTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
    [[UIProgressView appearanceWhenContainedIn:[UIToolbar class], nil] setTrackTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
#endif
}

#pragma mark - UISearchBar

+ (void)customizeSearchBarWithPrimaryColor:(UIColor *)primaryColor withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UISearchBar appearance] setBarTintColor:primaryColor];
    [[UISearchBar appearance] setBackgroundColor:primaryColor];
    [[UISearchBar appearance] setTintColor:contentColor];
    [[UISearchBar appearance] setBackgroundImage:[UIImage new] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
}

#pragma mark - UISegmentedControl

+ (void)customizeSegmentedControlWithPrimaryColor:(UIColor *)primaryColor
                                 withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UISegmentedControl appearance] setTintColor:primaryColor];
#if TARGET_OS_IOS
    [[UISegmentedControl appearanceWhenContainedIn:[UINavigationBar class], nil]
     setTintColor:contentColor];
    [[UISegmentedControl appearanceWhenContainedIn:[UIToolbar class], nil]
     setTintColor:contentColor];
#endif
}

+ (void)customizeSegmentedControlWithPrimaryColor:(UIColor *)primaryColor
                                     withFontName:(NSString *)fontName
                                     withFontSize:(CGFloat)fontSize
                                 withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UISegmentedControl appearance] setTintColor:primaryColor];
#if TARGET_OS_IOS
    [[UISegmentedControl appearanceWhenContainedIn:[UINavigationBar class], nil]
     setTintColor:contentColor];
    [[UISegmentedControl appearanceWhenContainedIn:[UIToolbar class], nil]
     setTintColor:contentColor];
#endif

    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    if (font) {
        [[UISegmentedControl appearance] setTitleTextAttributes:@{NSFontAttributeName:font}
                                                 forState:UIControlStateNormal];
    }
}

#pragma mark - UISlider

#if TARGET_OS_IOS
+ (void)customizeSliderWithPrimaryColor:(UIColor *)primaryColor
                       withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UISlider appearance] setMinimumTrackTintColor:primaryColor];
    [[UISlider appearanceWhenContainedIn:[UINavigationBar class], nil] setMinimumTrackTintColor:contentColor];
    [[UISlider appearanceWhenContainedIn:[UIToolbar class], nil] setMinimumTrackTintColor:contentColor];
    [[UISlider appearance] setMaximumTrackTintColor:[UIColor lightGrayColor]];
    [[UISlider appearanceWhenContainedIn:[UINavigationBar class], nil] setMaximumTrackTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
    [[UISlider appearanceWhenContainedIn:[UIToolbar class], nil] setMaximumTrackTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
    
    [[UISlider appearance] setThumbTintColor:primaryColor];
    [[UISlider appearanceWhenContainedIn:[UIToolbar class], nil] setThumbTintColor:contentColor];
}

+ (void)customizeSliderWithPrimaryColor:(UIColor *)primaryColor
                      andSecondaryColor:(UIColor *)secondaryColor {
    
    [[UISlider appearance] setMinimumTrackTintColor:secondaryColor];
    [[UISlider appearanceWhenContainedIn:[UINavigationBar class], nil] setMinimumTrackTintColor:secondaryColor];
    [[UISlider appearanceWhenContainedIn:[UIToolbar class], nil] setMinimumTrackTintColor:secondaryColor];
    [[UISlider appearance] setMaximumTrackTintColor:[UIColor lightGrayColor]];
    [[UISlider appearanceWhenContainedIn:[UINavigationBar class], nil] setMaximumTrackTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
    [[UISlider appearanceWhenContainedIn:[UIToolbar class], nil] setMaximumTrackTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
    
    [[UISlider appearance] setThumbTintColor:secondaryColor];
    [[UISlider appearanceWhenContainedIn:[UIToolbar class], nil] setThumbTintColor:ContrastColor(primaryColor, NO)];
}
#endif

#pragma mark - UIStepper

#if TARGET_OS_IOS
+ (void)customizeStepperWithPrimaryColor:(UIColor *)primaryColor
                        withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UIStepper appearance] setTintColor:primaryColor];
    [[UIStepper appearanceWhenContainedIn:[UINavigationBar class], nil]
     setTintColor:contentColor];
    [[UIStepper appearanceWhenContainedIn:[UIToolbar class], nil]
     setTintColor:contentColor];
}
#endif

#pragma mark - UISwitch

#if TARGET_OS_IOS
+ (void)customizeSwitchWithPrimaryColor:(UIColor *)primaryColor {
    
    [[UISwitch appearance] setOnTintColor:primaryColor];
    [[UISwitch appearanceWhenContainedIn:[UINavigationBar class], nil] setOnTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
    [[UISwitch appearanceWhenContainedIn:[UIToolbar class], nil] setOnTintColor:[[primaryColor darkenByPercentage:0.25] flatten]];
}

+ (void)customizeSwitchWithPrimaryColor:(UIColor *)primaryColor
                      andSecondaryColor:(UIColor *)secondaryColor {
    
    [[UISwitch appearance] setOnTintColor:secondaryColor];
    [[UISwitch appearanceWhenContainedIn:[UINavigationBar class], nil] setOnTintColor:secondaryColor];
    [[UISwitch appearanceWhenContainedIn:[UIToolbar class], nil] setOnTintColor:secondaryColor];
}
#endif

#pragma mark - UITabBar

+ (void)customizeTabBarWithBarTintColor:(UIColor *)barTintColor
                           andTintColor:(UIColor *)tintColor {
    
    [[UITabBar appearance] setBarTintColor:barTintColor];
    [[UITabBar appearance] setTintColor:tintColor];
}

+ (void)customizeTabBarWithBarTintColor:(UIColor *)barTintColor
                              tintColor:(UIColor *)tintColor
                               fontName:(NSString *)fontName
                               fontSize:(CGFloat)fontSize {
    
    [[UITabBar appearance] setBarTintColor:barTintColor];
    [[UITabBar appearance] setTintColor:tintColor];
    
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    if (font) {
        [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:font}
                                                 forState:UIControlStateNormal];
    }
}

#pragma mark - UIToolbar

#if TARGET_OS_IOS
+ (void)customizeToolbarWithPrimaryColor:(UIColor *)primaryColor
                        withContentStyle:(UIContentStyle)contentStyle {
    
    UIColor *contentColor;
    switch (contentStyle) {
        case UIContentStyleContrast: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
        case UIContentStyleLight: {
            contentColor = [UIColor whiteColor];
            break;
        }
        case UIContentStyleDark: {
            contentColor = FlatBlackDark;
            break;
        }
        default: {
            contentColor = ContrastColor(primaryColor, NO);
            break;
        }
    }
    
    [[UIToolbar appearance] setTintColor:contentColor];
    [[UIToolbar appearance] setBarTintColor:primaryColor];
    [[UIToolbar appearance] setClipsToBounds:YES];
}
#endif

#pragma GCC diagnostic pop

@end
