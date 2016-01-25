## 📄 Change Log

### 2.0.5

* Theme Support for UIImagePickerController (#83)
* Objective-C Demo Project
* Fixed Erroneous Swift Method Naming Convention Warnings
* Bumped up the minimum version of iOS to `8.0`.
* Fixed `If-Else` Statement Logic (#48)
* Removed cast for `calloc` (#76).

### 2.0.4

* Minor Fixes.
* Simplified `arrayOfColorsWithColorScheme` (#68)
* `colorWithFlatVersionFrom` alpha bug fix (#69)

### 2.0.3

* Added `hidesNavigationBarHairline` boolean to UINavigationController, and by default it is now set to `NO`. (#64) 
* Improved Quick-Look Documentation for Theme Methods

### 2.0.2

* Carthage support added. (By [@bre7](https://github.com/bre7))
* Demo project added. (By [@bre7](https://github.com/bre7))
* Shields added to `README`. (By [@bre7](https://github.com/bre7))
* Fixed *'Wrong Navigation Bar Color'* bug. ([#51](https://github.com/ViccAlexander/Chameleon/issues/51)) (By [@bre7](https://github.com/bre7))
* Fixed *'Flatten'* bug. ([#53](https://github.com/ViccAlexander/Chameleon/issues/53)) (By [@bre7](https://github.com/bre7))
* Fixed *'EXC_BAD_ACCESS Error'* issue. ([#57](https://github.com/ViccAlexander/Chameleon/issues/57)) (By [@bre7](https://github.com/bre7))
* Several swift functions were made public. (By [@dexter505](https://github.com/dexter505))

### 2.0.1

* Fixed *'ColorWithFlatVersionOf'* bug. ([#50](https://github.com/ViccAlexander/Chameleon/pull/50)) (By [@bre7](https://github.com/bre7))

### 2.0.0

* Added support for hex colors, colors from images, themes, and lighten and darken by percentage methods. (By [@ViccAlexander](https://github.com/ViccAlexander)) 

###### Added Methods  

**Chameleon.h**
 
* `+ (void)setGlobalThemeUsingPrimaryColor:(UIColor *)primaryColor withContentStyle:(UIContentStyle)contentStyle;`
* `+ (void)setGlobalThemeUsingPrimaryColor:(UIColor *)primaryColor withSecondaryColor:(UIColor *)secondaryColor andContentStyle:(UIContentStyle)contentStyle;`
* `+ (void)setGlobalThemeUsingPrimaryColor:(UIColor *)primaryColor  withSecondaryColor:(UIColor *)secondaryColor usingFontName:(NSString *)fontName andContentStyle:(UIContentStyle)contentStyle;`

**NSArray+Chameleon.h**

* `+ (NSArray *)arrayOfColorsFromImage:(UIImage *)image withFlatScheme (BOOL)isFlatScheme;`

**UIColor+Chameleon.h**

* `+ (UIColor *)colorWithAverageColorFromImage:(UIImage *)image;`
* `+ (UIColor *)colorWithAverageColorFromImage:(UIImage *)image withAlpha:(CGFloat)alpha;`
* `+ (UIColor *)colorWithRandomFlatColorOfShadeStyle:(UIShadeStyle)shadeStyle withAlpha:(CGFloat)alpha;`
* `+ (UIColor *)colorWithComplementaryFlatColorOf:(UIColor *)color withAlpha:(CGFloat)alpha;`
* `+ (UIColor *)colorWithContrastingBlackOrWhiteColorOn:(UIColor *)backgroundColor isFlat:(BOOL)flat alpha:(CGFloat)alpha;`
* `+ (UIColor *)colorWithFlatVersionOf:(UIColor *)color withAlpha:(CGFloat)alpha;`
* `+ (UIColor *)colorWithHexString:(NSString *)string;`
* `+ (UIColor *)colorWithHexString:(NSString *)string withAlpha:(CGFloat)alpha;`
* `- (UIColor *)flatten;`
* `- (UIColor *)darkenByPercentage:(CGFloat)percentage;`
* `- (UIColor *)lightenByPercentage:(CGFloat)percentage;`

**UINavigationController+Chameleon.h**

* `- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle;`
* `- (void)setThemeUsingPrimaryColor:(UIColor *)primaryColor withContentStyle:(UIContentStyle)contentStyle;`
* `- (void)setThemeUsingPrimaryColor:(UIColor *)primaryColor withSecondaryColor:(UIColor *)secondaryColor andContentStyle:(UIContentStyle)contentStyle;`
* `setThemeUsingPrimaryColor:(UIColor *)primaryColor withSecondaryColor:(UIColor *)secondaryColor usingFontName:(NSString *)fontName andContentStyle:(UIContentStyle)contentStyle;`
* `- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle;`

                        
###### Deprecated Methods

**NSArray+Chameleon.h**

* ~~`+ (NSArray *)arrayOfColorsWithColorScheme:(ColorScheme)colorScheme with:(UIColor *)color flatScheme:(BOOL)isFlatScheme `~~  

> Replaced with: `+ (NSArray *)arrayOfColorsWithColorScheme:(ColorScheme)colorScheme usingColor:(UIColor *)color withFlatScheme:(BOOL)isFlatScheme;`

**UIViewController+Chameleon.h**

* ~~`- (void)flatify;`~~
* ~~`- (void)flatifyAndContrast;`~~

###### Added Macros
* `AverageColorFromImage(image)`
* `AverageColorFromImageWithAlpha(image, alpha)`
* `RandomFlatColorWithShadeAndAlpha(shade, alpha)`
* `ColorsWithScheme(colorSchemeType, color, isFlatScheme)`   
* `ComplementaryFlatColorWithAlpha(color, alpha)`
* `ContrastColorWithAlpha(backgroundColor, returnFlat, alpha)`
* `HexColor(hexString)`
* `HexColorWithAlpha(hexString, alpha)`
* `RandomFlatColorWithShadeAndAlpha(shade, alpha)`
* `ColorsFromImage(image, isFlatScheme)`  

######Deprecated
* `ColorsWithScheme(colorSchemeType, color, isFlatScheme)`

> Replaced with: `ColorsWithScheme(colorSchemeType, color, isFlatScheme)`

### 1.2.1
• Added cocoapods support for Swift 2 *(Thanks to [**@bre7**](https://github.com/bre7))*. 

### 1.2.0
• Fixed cocoapods installation error [#30](https://github.com/ViccAlexander/Chameleon/issues/30).  
• Updated Swift syntax to Swift 1.2 *(Fixed by [**@peacemoon**](https://github.com/peacemoon))*.    
• Split Objective-C & Swift Files into separate folders to keep files better organized.  
• Renamed `Constants.swift` to `ChameleonShorthand.swift`  

###### Deprecated Methods

* ~~`FlatVersionOfColor(color)`~~  
* ~~`ColorScheme(colorSchemeType: ColorScheme, color: UIColor, isFlatScheme: Bool)`~~   

Replaced with: `ColorSchemeOf(colorSchemeType: ColorScheme, color: UIColor, isFlatScheme: Bool)` due to naming constraints. 

### 1.1.3
• Chameleon shorthand is now supported in Swift. *(Thanks to [**@bre7**](https://github.com/bre7))*.  
• Fixed Small Syntax Typo. *(Fixed by [**@ddwang**](https://github.com/ddwang))*.  
• Fixed issue where `-colorWithRandomFlatColorOfShadeStyle` always returns random color of `UIShadeStyleLight` *(Fixed by [**@smokyonion**](https://github.com/smokyonion))*.    
• UIGraphics context now uses the current screen's scale, preventing pixel wrap around for certain `UIColors` generated by `+ (UIColor *)colorWithGradientStyle` methods *(Fixed by [**@alist**](https://github.com/alist))*.  
• Removed warnings regarding the absolute value function `fabsf` *(Fixed by [**@jherran**](https://github.com/jherran))*.  
• Fixed the *`UIColor+Chameleon.m:444:13: code will never be executed*`, error state *(Fixed by [**@jherran**](https://github.com/jherran))*.  


### 1.1.2
• Updated Copyright in all files and launch images  
• Added Launch Image in example project for iPhone 6 & iPhone 6 Plus  
• Replaced the reserved word `for` with the word `with` in `arrayOfColorsWithColorScheme` *(Fixed by [**@sfader**](https://github.com/sfader))*.

###### Deprecated Methods
 * ~~`initWithArray:for:flatScheme:`~~

Replaced with: `initWithArray:with:flatScheme:`  

### 1.1.1
* ```ShadeStyle``` is now ```UIShadeStyle```
* ```GradientStyle``` is now ```UIGradientStyle```
* ```light``` is now ```UIShadeStyleLight```
* ```dark``` is now ```UIShadeStyleDark```
* ```linearGradientLeftToRight``` is now ```UIGradientStyleLeftToRight```
* ```linearGradientTopToBottom``` is now ```UIGradientStyleTopToBottom```
* Added: ```UIGradientStyleRadial```

### 1.1.0
* Added Gradient Colors
* Added Storyboard Palette Add-on
* Added Xcode Quick Help Documentation Support
* Switched from RGB colorspace to HSB & LAB colorspaces (closer to human perception)
* Implemented `ContrastingColor` which supports all alphas and has additional support for non-flat and flat colors
* Changed Color difference algorithm so that it now uses CIE:2000 formula
* Changed `RandomFlatColors` from enum to nsarray values
* Edited `RandomFlatColor` so that it will no longer spit out the same color back to back
* Switched complementary and triadic fourth and fifth colors order.
* New Macro: `ClearColor`

###### Deprecated Methods
* ~~`colorWithContrastingBlackOrWhiteColorOn:`~~

Replaced with: `colorWithContrastingBlackOrWhiteColorOn:isFlat:`  

###### Deprecated Macros
* ~~`ContrastingColorOf(backgroundColor)`~~  

Replaced with: `ContrastingColorOf(backgroundColor, isFlat)`

* ~~`ComplementaryColorOf(color)`~~

Replaced with: `ComplementaryFlatColorOf(color)`

* ~~`RandomColorWithShade(shade)`~~

Replaced with: `RandomFlatColorWithShade(shade)`

### 1.0.1
* Added Table of Contents
* Fixed a couple of spelling errors
* Extra '#define' deleted *(Fixed by [**@cascio**](https://github.com/cascio))*.  
* Imported UIKit in ChameleonStatusBar.h and NSArray+Chameleon.h *(Fixed by [**@jmhooper**](https://github.com/jmhooper))*.
