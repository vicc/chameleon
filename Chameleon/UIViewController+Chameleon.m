
//  UIViewController+Chameleon.m

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

#import "UIViewController+Chameleon.h"
#import "UIColor+Chameleon.h"
#import "ChameleonMacros.h"

#define SYSTEM_VERSION_LESS_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)

@implementation UIViewController (Chameleon)

#pragma mark - Chameleon - Public Methods

- (void)flatify {
    
    [self flatifyNavigationBarItems];
    
    for (UIView *subview in self.view.subviews) {
        [self flatifyColorsForView:subview withContrast:NO];
        
    }
}

- (void)flatifyAndContrast {
    
    [self flatifyNavigationBarItems];
    
    for (UIView *subview in self.view.subviews) {
        [self flatifyColorsForView:subview withContrast:YES];
    }
}

#pragma mark - Chameleon - Internal Methods

- (void)flatifyNavigationBarItems {
    
    //Quick solution to flatifying navigation bars in view controllers (could be implemented better)
    [self.navigationController.navigationBar setBarTintColor:FlatVersionOf(self.navigationController.navigationBar.barTintColor)];
    [self.navigationController.navigationBar setTintColor:ContrastColorOf(self.navigationController.navigationBar.barTintColor, YES)];
}

- (void)flatifyColorsForView:(UIView *)view withContrast:(BOOL)contrast {
    
    if (contrast == YES) {
        
        //Flatify UIActivityIndicator
        [self flatifyUIActivityIndicatorView:view];
        
        //Flatify UIBarButtonItem
        [self flatifyUIBarButtonItemView:view];
        
        //Flatify UIControls
        [self flatifyAndContrastUIButtonView:view];
        [self flatifyUIDatePickerView:view];
        [self flatifyUIPageControl:view];
        [self flatifyAndContrastUISegmentedControl:view];
        [self flatifyUISliderView:view];
        [self flatifyAndContrastUIStepperView:view];
        [self flatifyUISwitchView:view];
        [self flatifyAndContrastUITextField:view];
        
        //Flatify UIImageView
        [self flatifyUIImageView:view];
        
        //Flatify UILabels
        [self flatifyAndContrastUILabelView:view];
        
        //Flatify UINavigationBar
        [self flatifyAndContrastUINavigationBar:view];
        
        //Flatify UIProgressView
        [self flatifyUIProgressView:view];
        
        //Flatify UISearchBar
        [self flatifyUISearchBar:view];
        
        //Flatify UITabBar
        [self flatifyUITabBar:view];
        
        //Flatify UITableView
        [self flatifyUITableView:view];
        
        //Flatify UITextView
        [self flatifyAndContrastUITextView:view];
        
        //Flatify UIToolbar
        [self flatifyUIToolbar:view];
        
        //Flatify UIView
        [self flatifyUIView:view];
        
        //Flatify UIViewController's Own View
        [self flatifyUIView:self.view];
        
    } else {
        
        //Flatify UIActivityIndicator
        [self flatifyUIActivityIndicatorView:view];
        
        //Flatify UIBarButtonItem
        [self flatifyUIBarButtonItemView:view];
        
        //Flatify UIControls
        [self flatifyUIButtonView:view];
        [self flatifyUIDatePickerView:view];
        [self flatifyUIPageControl:view];
        [self flatifyUISegmentedControl:view];
        [self flatifyUISliderView:view];
        [self flatifyUIStepperView:view];
        [self flatifyUISwitchView:view];
        [self flatifyUITextField:view];
        
        //Flatify UIImageView
        [self flatifyUIImageView:view];
        
        //Flatify UILabels
        [self flatifyUILabelView:view];
        
        //Flatify UINavigationBar
        [self flatifyUINavigationBar:view];
        
        //Flatify UIProgressView
        [self flatifyUIProgressView:view];
        
        //Flatify UISearchBar
        [self flatifyUISearchBar:view];
        
        //Flatify UITabBar
        [self flatifyUITabBar:view];
        
        //Flatify UITableView
        [self flatifyUITableView:view];
        
        //Flatify UITextView
        [self flatifyUITextView:view];
        
        //Flatify UIToolbar
        [self flatifyUIToolbar:view];
        
        //Flatify UIView
        [self flatifyUIView:view];
        
        //Flatify UIViewController's Own View
        [self flatifyUIView:self.view];
    }

}

#pragma mark - Chameleon Flatify UIActivityIndicatorView

//UIActivityIndicatorView
- (void)flatifyUIActivityIndicatorView:(UIView *)view {
    
    if ([view isKindOfClass:[UIActivityIndicatorView class]]) {
        UIActivityIndicatorView *godActivityIndicatorView = (UIActivityIndicatorView *)view;
        [godActivityIndicatorView setBackgroundColor:FlatVersionOf(godActivityIndicatorView.backgroundColor)];
        [godActivityIndicatorView setColor:FlatVersionOf(godActivityIndicatorView.color)];
        [godActivityIndicatorView setTintColor:FlatVersionOf(godActivityIndicatorView.tintColor)];
    }
}

#pragma mark - Chameleon Flatify UIBarButtonItem

//UIActivityIndicatorView
- (void)flatifyUIBarButtonItemView:(UIView *)view {
    
    if ([view isKindOfClass:[UIBarButtonItem class]]) {
        UIBarButtonItem *godBarButtonItem = (UIBarButtonItem *)view;
        [godBarButtonItem setTintColor:FlatVersionOf(godBarButtonItem.tintColor)];
    }
}

#pragma mark - Chameleon - Flatify UIControls

//UIButton - Flatify Only
- (void)flatifyUIButtonView:(UIView *)view {
    
    if ([view isKindOfClass:[UIButton class]]) {
        UIButton *godButton = (UIButton *)view;
        [godButton setBackgroundColor:FlatVersionOf(godButton.backgroundColor)];
        [godButton setTintColor:FlatVersionOf(godButton.tintColor)];
        [godButton setTitleColor:FlatVersionOf(godButton.titleLabel.textColor)
                        forState:UIControlStateNormal];
        [godButton setTitleShadowColor:FlatVersionOf(godButton.titleLabel.shadowColor)
                              forState:UIControlStateNormal];
    }
}

//UIButton - Flatify & Contrast Text / Image
- (void)flatifyAndContrastUIButtonView:(UIView *)view {
    
    if ([view isKindOfClass:[UIButton class]]) {
        UIButton *godButton = (UIButton *)view;
        [godButton setBackgroundColor:FlatVersionOf(godButton.backgroundColor)];
        [godButton setTitleShadowColor:FlatVersionOf(godButton.titleLabel.shadowColor)
                              forState:UIControlStateNormal];
        
        //Check if backgroundColor exists
        if (!godButton.backgroundColor) {
            [godButton setTintColor:FlatVersionOf(godButton.tintColor)];
            [godButton setTitleColor:FlatVersionOf(godButton.titleLabel.textColor)
                            forState:UIControlStateNormal];
            
        } else {
            [godButton setTintColor:ContrastColorOf(godButton.backgroundColor, YES)];
            [godButton setTitleColor:ContrastColorOf(godButton.backgroundColor, YES)
                            forState:UIControlStateNormal];
        }
    }
}

//UIDatePicker - Flatify
- (void)flatifyUIDatePickerView:(UIView *)view {
    
    if ([view isKindOfClass:[UIDatePicker class]]) {
        UIDatePicker *godDatePicker = (UIDatePicker *)view;
        [godDatePicker setBackgroundColor:FlatVersionOf(godDatePicker.backgroundColor)];
        [godDatePicker setTintColor:FlatVersionOf(godDatePicker.tintColor)];
    }
}

//UIPageControl
- (void)flatifyUIPageControl:(UIView *)view {
    
    if ([view isKindOfClass:[UIPageControl class]]) {
        UIPageControl *godPageControl = (UIPageControl *)view;
        [godPageControl setBackgroundColor:FlatVersionOf(godPageControl.backgroundColor)];
        [godPageControl setCurrentPageIndicatorTintColor:FlatVersionOf(godPageControl.currentPageIndicatorTintColor)];
        [godPageControl setPageIndicatorTintColor:FlatVersionOf(godPageControl.pageIndicatorTintColor)];
        [godPageControl setTintColor:FlatVersionOf(godPageControl.tintColor)];
    }
}

//UISegmentedControl - Flatify Only
- (void)flatifyUISegmentedControl:(UIView *)view {
    
    if ([view isKindOfClass:[UISegmentedControl class]]) {
        UISegmentedControl *godSegmentedControl = (UISegmentedControl *)view;
        [godSegmentedControl setBackgroundColor:FlatVersionOf(godSegmentedControl.backgroundColor)];
        [godSegmentedControl setTintColor:FlatVersionOf(godSegmentedControl.tintColor)];
    }
}

//UISegmentedControl - Flatify & Contrast
- (void)flatifyAndContrastUISegmentedControl:(UIView *)view {
    
    if ([view isKindOfClass:[UISegmentedControl class]]) {
        UISegmentedControl *godSegmentedControl = (UISegmentedControl *)view;
        [godSegmentedControl setBackgroundColor:FlatVersionOf(godSegmentedControl.backgroundColor)];
        if (!godSegmentedControl.backgroundColor) {
            [godSegmentedControl setTintColor:FlatVersionOf(godSegmentedControl.tintColor)];
            
        } else {
            [godSegmentedControl setTintColor:ContrastColorOf(godSegmentedControl.backgroundColor, YES)];
        }
    }
}

//UISlider
- (void)flatifyUISliderView:(UIView *)view {
    
    if ([view isKindOfClass:[UISlider class]]) {
        UISlider *godSlider = (UISlider *)view;
        [godSlider setBackgroundColor:FlatVersionOf(godSlider.backgroundColor)];
        [godSlider setMinimumTrackTintColor:FlatVersionOf(godSlider.minimumTrackTintColor)];
        [godSlider setMaximumTrackTintColor:FlatVersionOf(godSlider.maximumTrackTintColor)];
    }
}

//UIStepper - Flatify Only
- (void)flatifyUIStepperView:(UIView *)view {
    
    if ([view isKindOfClass:[UIStepper class]]) {
        UIStepper *godStepper = (UIStepper *)view;
        [godStepper setBackgroundColor:FlatVersionOf(godStepper.backgroundColor)];
        [godStepper setTintColor:FlatVersionOf(godStepper.tintColor)];
    }
}

//UIStepper - Flatify & Contrast
- (void)flatifyAndContrastUIStepperView:(UIView *)view {
    
    if ([view isKindOfClass:[UIStepper class]]) {
        UIStepper *godStepper = (UIStepper *)view;
        [godStepper setBackgroundColor:FlatVersionOf(godStepper.backgroundColor)];
        
        if (!godStepper.backgroundColor) {
            [godStepper setTintColor:FlatVersionOf(godStepper.tintColor)];
        } else {
            [godStepper setTintColor:ContrastColorOf(godStepper.backgroundColor, YES)];
        }
    }
}

//UISwitch
- (void)flatifyUISwitchView:(UIView *)view {
    
    if ([view isKindOfClass:[UISwitch class]]) {
        UISwitch *godSwitch = (UISwitch *)view;
        [godSwitch setThumbTintColor:FlatVersionOf(godSwitch.thumbTintColor)];
        [godSwitch setOnTintColor:FlatVersionOf(godSwitch.onTintColor)];
        [godSwitch setBackgroundColor:FlatVersionOf(godSwitch.backgroundColor)];
        [godSwitch setTintColor:FlatVersionOf(godSwitch.tintColor)];
    }
}

//UITextField - Flatify Only
- (void)flatifyUITextField:(UIView *)view {
    
    if ([view isKindOfClass:[UITextField class]]) {
        UITextField *godTextField = (UITextField *)view;
        [godTextField setBackgroundColor:FlatVersionOf(godTextField.backgroundColor)];
        [godTextField setTextColor:FlatVersionOf(godTextField.textColor)];
        [godTextField setTintColor:FlatVersionOf(godTextField.tintColor)];
        
    }
}

//UITextField - Flatify & Contrast
- (void)flatifyAndContrastUITextField:(UIView *)view {
    
    if ([view isKindOfClass:[UITextField class]]) {
        UITextField *godTextField = (UITextField *)view;
        [godTextField setBackgroundColor:FlatVersionOf(godTextField.backgroundColor)];
        [godTextField setTintColor:FlatVersionOf(godTextField.tintColor)];
        
        if (!godTextField.backgroundColor) {
            [godTextField setTextColor:FlatVersionOf(godTextField.textColor)];
        } else {
            [godTextField setTextColor:ContrastColorOf(godTextField.backgroundColor, YES)];
        }
    }
}

#pragma mark - Chameleon - Flatify UIImageView

//UIImageView
- (void)flatifyUIImageView:(UIView *)view {
    
    if ([view isKindOfClass:[UIImageView class]]) {
        UIImageView *godImageView = (UIImageView *)view;
        [godImageView setBackgroundColor:FlatVersionOf(godImageView.backgroundColor)];
        [godImageView setTintColor:FlatVersionOf(godImageView.tintColor)];
    }
}

#pragma mark - Chameleon - Flatify UILabel

//UILabel - Flatify Only
- (void)flatifyUILabelView:(UIView *)view {
    
    if ([view isKindOfClass:[UILabel class]]) {
        UILabel *godLabel = (UILabel *)view;
        [godLabel setBackgroundColor:FlatVersionOf(godLabel.backgroundColor)];
        [godLabel setTextColor:FlatVersionOf(godLabel.textColor)];
        [godLabel setTintColor:FlatVersionOf(godLabel.tintColor)];
        [godLabel setHighlightedTextColor:FlatVersionOf(godLabel.highlightedTextColor)];
    }
}

//UILabel - Flatify & Contrast
- (void)flatifyAndContrastUILabelView:(UIView *)view {
    
    if ([view isKindOfClass:[UILabel class]]) {
        UILabel *godLabel = (UILabel *)view;
        [godLabel setBackgroundColor:FlatVersionOf(godLabel.backgroundColor)];
        
        if (!godLabel.backgroundColor) {
            [godLabel setTextColor:FlatVersionOf(godLabel.textColor)];
            [godLabel setTintColor:FlatVersionOf(godLabel.tintColor)];
            [godLabel setHighlightedTextColor:FlatVersionOf(godLabel.highlightedTextColor)];
            
        } else {
            [godLabel setTextColor:ContrastColorOf(godLabel.backgroundColor, YES)];
            [godLabel setTintColor:ContrastColorOf(godLabel.backgroundColor, YES)];
            [godLabel setHighlightedTextColor:ComplementaryFlatColorOf(godLabel.backgroundColor)];
        }
    }
}

#pragma mark - Chameleon Flatify UINavigationBar

//UINavigationBar - Flatify Only
- (void)flatifyUINavigationBar:(UIView *)view {
    
    if ([view isKindOfClass:[UINavigationBar class]]) {
        UINavigationBar *godNavigationBar = (UINavigationBar *)view;
        [godNavigationBar setBackgroundColor:FlatVersionOf(godNavigationBar.backgroundColor)];
        [godNavigationBar setBarTintColor:FlatVersionOf(godNavigationBar.barTintColor)];
        [godNavigationBar setTintColor:FlatVersionOf(godNavigationBar.tintColor)];
        [godNavigationBar.topItem.titleView setBackgroundColor:FlatVersionOf(godNavigationBar.topItem.titleView.backgroundColor)];
        [godNavigationBar.topItem.titleView setTintColor:FlatVersionOf(godNavigationBar.topItem.titleView.tintColor)];
    }
    
    if ([view isKindOfClass:[UINavigationItem class]]) {
        
        UINavigationItem *godNavigationItem = (UINavigationItem *)view;
        [godNavigationItem.backBarButtonItem setTintColor:FlatVersionOf(godNavigationItem.backBarButtonItem.tintColor)];
        [godNavigationItem.leftBarButtonItem setTintColor:FlatVersionOf(godNavigationItem.leftBarButtonItem.tintColor)];
        [godNavigationItem.rightBarButtonItem setTintColor:FlatVersionOf(godNavigationItem.rightBarButtonItem.tintColor)];
        [godNavigationItem.titleView setBackgroundColor:FlatVersionOf(godNavigationItem.titleView.backgroundColor)];
        [godNavigationItem.titleView setTintColor:FlatVersionOf(godNavigationItem.titleView.tintColor)];
    }
}

//UINavigationBar - Flatify & Contrast
- (void)flatifyAndContrastUINavigationBar:(UIView *)view {
    
    if ([view isKindOfClass:[UINavigationBar class]]) {
        UINavigationBar *godNavigationBar = (UINavigationBar *)view;
        [godNavigationBar setBackgroundColor:FlatVersionOf(godNavigationBar.backgroundColor)];
        [godNavigationBar setBarTintColor:FlatVersionOf(godNavigationBar.barTintColor)];
        [godNavigationBar setTintColor:FlatVersionOf(godNavigationBar.tintColor)];
        [godNavigationBar.topItem.titleView setBackgroundColor:FlatVersionOf(godNavigationBar.topItem.titleView.backgroundColor)];
        
        if (godNavigationBar.barTintColor) {
            [godNavigationBar.topItem.titleView setTintColor:ContrastColorOf(godNavigationBar.barTintColor, YES)];
        } else {
            if (godNavigationBar.backgroundColor) {
                [godNavigationBar.topItem.titleView setTintColor:ContrastColorOf(godNavigationBar.backgroundColor, YES)];
            } else {
                [godNavigationBar.topItem.titleView setTintColor:FlatVersionOf(godNavigationBar.topItem.titleView.tintColor)];
            }
        }
        
    
    }
    
    if ([view isKindOfClass:[UINavigationItem class]]) {
        
        UINavigationItem *godNavigationItem = (UINavigationItem *)view;
        
        if (godNavigationItem.titleView.backgroundColor) {
            [godNavigationItem.backBarButtonItem setTintColor:ContrastColorOf(godNavigationItem.titleView.backgroundColor, YES)];
            [godNavigationItem.leftBarButtonItem setTintColor:ContrastColorOf(godNavigationItem.titleView.backgroundColor, YES)];
            [godNavigationItem.rightBarButtonItem setTintColor:ContrastColorOf(godNavigationItem.titleView.backgroundColor, YES)];
            [godNavigationItem.titleView setBackgroundColor:FlatVersionOf(godNavigationItem.titleView.backgroundColor)];
            [godNavigationItem.titleView setTintColor:ContrastColorOf(godNavigationItem.titleView.backgroundColor, YES)];
        } else {
            [godNavigationItem.backBarButtonItem setTintColor:FlatVersionOf(godNavigationItem.backBarButtonItem.tintColor)];
            [godNavigationItem.leftBarButtonItem setTintColor:FlatVersionOf(godNavigationItem.leftBarButtonItem.tintColor)];
            [godNavigationItem.rightBarButtonItem setTintColor:FlatVersionOf(godNavigationItem.rightBarButtonItem.tintColor)];
            [godNavigationItem.titleView setBackgroundColor:FlatVersionOf(godNavigationItem.titleView.backgroundColor)];
            [godNavigationItem.titleView setTintColor:FlatVersionOf(godNavigationItem.titleView.tintColor)];
        }
    }
}

#pragma mark - Chameleon Flatify UIProgressView

//UIProgressView
- (void)flatifyUIProgressView:(UIView *)view {
    
    if ([view isKindOfClass:[UIProgressView class]]) {
        UIProgressView *godProgressView = (UIProgressView *)view;
        [godProgressView setBackgroundColor:FlatVersionOf(godProgressView.backgroundColor)];
        [godProgressView setProgressTintColor:FlatVersionOf(godProgressView.progressTintColor)];
        [godProgressView setTintColor:FlatVersionOf(godProgressView.tintColor)];
        [godProgressView setTrackTintColor:FlatVersionOf(godProgressView.trackTintColor)];
    }
}

#pragma mark - Chameleon Flatify UISearchBar

//UISearchBar
- (void)flatifyUISearchBar:(UIView *)view {
    
    if ([view isKindOfClass:[UISearchBar class]]) {
        UISearchBar *godSearchBar = (UISearchBar *)view;
        [godSearchBar setBackgroundColor:FlatVersionOf(godSearchBar.backgroundColor)];
        [godSearchBar setBarTintColor:FlatVersionOf(godSearchBar.barTintColor)];
        [godSearchBar setTintColor:FlatVersionOf(godSearchBar.tintColor)];
    }
    
}

#pragma mark - Chameleon Flatify UITabBar

//UITabBar
- (void)flatifyUITabBar:(UIView *)view {
    
    if ([view isKindOfClass:[UITabBar class]]) {
        UITabBar *godTabBar = (UITabBar *)view;
        [godTabBar setBackgroundColor:FlatVersionOf(godTabBar.backgroundColor)];
        [godTabBar setBarTintColor:FlatVersionOf(godTabBar.barTintColor)];
        
        if (SYSTEM_VERSION_LESS_THAN(@"8.0")) {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Wdeprecated-declarations"
            [godTabBar setSelectedImageTintColor:FlatVersionOf(godTabBar.selectedImageTintColor)];
            #pragma clang diagnostic pop
        } else {
            [godTabBar setTintColor:FlatVersionOf(godTabBar.tintColor)];
        }
        
        [godTabBar setTintColor:FlatVersionOf(godTabBar.tintColor)];
        
    }
    
}

#pragma mark - Chameleon Flatify UITableView

//UITableView
- (void)flatifyUITableView:(UIView *)view {
    
    if ([view isKindOfClass:[UITableView class]]) {
        UITableView *godTableView = (UITableView *)view;
        [godTableView setBackgroundColor:FlatVersionOf(godTableView.backgroundColor)];
        [godTableView setSectionIndexBackgroundColor:FlatVersionOf(godTableView.sectionIndexBackgroundColor)];
        [godTableView setSectionIndexColor:FlatVersionOf(godTableView.sectionIndexColor)];
        [godTableView setSectionIndexTrackingBackgroundColor:FlatVersionOf(godTableView.sectionIndexTrackingBackgroundColor)];
        [godTableView setSeparatorColor:FlatVersionOf(godTableView.separatorColor)];
        [godTableView setTintColor:FlatVersionOf(godTableView.tintColor)];
        [godTableView.backgroundView setBackgroundColor:FlatVersionOf(godTableView.backgroundView.backgroundColor)];
        [godTableView.backgroundView setTintColor:FlatVersionOf(godTableView.backgroundView.tintColor)];
        [godTableView.inputAccessoryView setBackgroundColor:FlatVersionOf(godTableView.inputAccessoryView.backgroundColor)];
        [godTableView.inputAccessoryView setTintColor:FlatVersionOf(godTableView.inputAccessoryView.tintColor)];
        [godTableView.inputView setBackgroundColor:FlatVersionOf(godTableView.inputView.backgroundColor)];
        [godTableView.inputView setTintColor:FlatVersionOf(godTableView.inputView.tintColor)];
        [godTableView.tableFooterView setBackgroundColor:FlatVersionOf(godTableView.tableFooterView.backgroundColor)];
        [godTableView.tableFooterView setTintColor:FlatVersionOf(godTableView.tableFooterView.tintColor)];
        [godTableView.tableHeaderView setBackgroundColor:FlatVersionOf(godTableView.tableHeaderView.backgroundColor)];
        [godTableView.tableHeaderView setTintColor:FlatVersionOf(godTableView.tableHeaderView.tintColor)];
        [godTableView.viewForBaselineLayout setBackgroundColor:FlatVersionOf(godTableView.viewForBaselineLayout.backgroundColor)];
        [godTableView.viewForBaselineLayout setTintColor:FlatVersionOf(godTableView.viewForBaselineLayout.backgroundColor)];
    }
}

#pragma mark - Chameleon Flatify UITextView

//UITextView - Flatify Only
- (void)flatifyUITextView:(UIView *)view {
    
    if ([view isKindOfClass:[UITextView class]]) {
        UITextView *godTextView = (UITextView *)view;
        [godTextView setBackgroundColor:FlatVersionOf(godTextView.backgroundColor)];
        [godTextView setTextColor:FlatVersionOf(godTextView.textColor)];
        [godTextView setTintColor:FlatVersionOf(godTextView.tintColor)];
    }
}

//UITextView - Flatify & Contrat
- (void)flatifyAndContrastUITextView:(UIView *)view {
    
    if ([view isKindOfClass:[UITextView class]]) {
        UITextView *godTextView = (UITextView *)view;
        [godTextView setBackgroundColor:FlatVersionOf(godTextView.backgroundColor)];
        [godTextView setTintColor:FlatVersionOf(godTextView.tintColor)];
        
        if (godTextView.backgroundColor) {
            [godTextView setTextColor:ContrastColorOf(godTextView.backgroundColor, YES)];
        } else {
            [godTextView setTextColor:FlatVersionOf(godTextView.textColor)];
        }
    }
}

#pragma mark - Chameleon Flatify UIToolBar

//UIToolbar
- (void)flatifyUIToolbar:(UIView *)view {
    
    if ([view isKindOfClass:[UIToolbar class]]) {
        UIToolbar *godToolbar = (UIToolbar *)view;
        [godToolbar setBackgroundColor:FlatVersionOf(godToolbar.backgroundColor)];
        [godToolbar setBarTintColor:FlatVersionOf(godToolbar.barTintColor)];
        [godToolbar setTintColor:FlatVersionOf(godToolbar.tintColor)];
    }
}

#pragma mark - Chameleon - Flatify UIView

//UIView
- (void)flatifyUIView:(UIView *)view {
    
    if ([view isKindOfClass:[UIView class]]) {
        UIView *godView = (UIView *)view;
        [godView setBackgroundColor:FlatVersionOf(godView.backgroundColor)];
        [godView setTintColor:FlatVersionOf(godView.tintColor)];
    }
}


@end
