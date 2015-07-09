Chameleon for iOS
=========

<p align="center">
  <img src="http://i.imgur.com/9U9FV4j.png" alt="Chameleon by Vicc Alexander"/>
</p>

## Introduction

**Chameleon** is a lightweight, yet powerful, flat color framework for iOS (Objective-C & Swift). It is built on the idea that software applications should function effortlessly while simultaneously maintaining their beautiful interfaces.

Chameleon is the **first and only** color framework that focuses its full attention and efforts on "flat colors". With Chameleon, you can easily forget about `UIColor` RGB values, wasting hours figuring out the right color combinations to use in your app, and worrying about whether your text will be readable on the various background colors of your app. 

### Chameleon vs Other Color Libraries

Chameleon solves problems that many other color libraries tend to overlook. With their distracting and superfluous features, other libraries confuse and misdirect developers. They create extensions that display a few colors, but leave developers to essentially create cohesive color palettes and replace countless lines of `UIColor` code if they desire to switch to a "flat color" themselves. But now, with only a few characters of code, Chameleon does all the heavy lifting.

## Table of Contents
[● Product Features](https://github.com/ViccAlexander/Chameleon#-product-features)  
[● Requirements](https://github.com/ViccAlexander/Chameleon#%EF%B8%8F-requirements)  
[● License](https://github.com/ViccAlexander/Chameleon#-license)  
[● Contributions](https://github.com/ViccAlexander/Chameleon#-contributions)   
[● Documentation](https://github.com/ViccAlexander/Chameleon#-documentation)  
[● Storyboard Add-On](https://github.com/ViccAlexander/Chameleon#storyboard-add-on)   
[● Author](https://github.com/ViccAlexander/Chameleon#-author)   
[● Special Thanks](https://github.com/ViccAlexander/Chameleon#-special-thanks)    
[● To Do List](https://github.com/ViccAlexander/Chameleon#-to-do-list)  
[● Change Log](https://github.com/ViccAlexander/Chameleon#-change-log)  

<!--- 
&nbsp;&nbsp;￮ [Installation](https://github.com/ViccAlexander/Chameleon#installation)  
&nbsp;&nbsp;￮ [Usage](https://github.com/ViccAlexander/Chameleon#usage)  
&nbsp;&nbsp;￮ [UIColor Methods](https://github.com/ViccAlexander/Chameleon#uicolor-methods)  
&nbsp;&nbsp;￮ [UIStatusBarStyle Methods](https://github.com/ViccAlexander/Chameleon#uistatusbarstyle-methods)    
&nbsp;&nbsp;￮ [Color Scheme Methods](https://github.com/ViccAlexander/Chameleon#color-schemes-methods)    
&nbsp;&nbsp;￮ [Flatify Methods (Beta)](https://github.com/ViccAlexander/Chameleon#flatify-methods-beta) 
--->

## 🌟 Product Features

### 100% Flat & Gorgeous

Chameleon features over 24 hand-picked colors that come in both light and dark shades. 

<p align="center">
  <img src="http://i.imgur.com/Hs8ICtJ.png" alt="Swatches"/>
</p>

### Flat Color Schemes

Chameleon equips you with 3 different classes of flat color schemes that can be generated from a flat or non-flat color. *In the examples below, the white stars indicate the color used to generate the schemes.*

###### Analogous Flat Color Scheme

![Analogous Scheme](http://i.imgur.com/cPAkSWA.png)

###### Complementary Flat Color Scheme
![Complementary Scheme](http://i.imgur.com/kisXJsu.png)

###### Triadic Flat Color Scheme
![Triadic Scheme](http://i.imgur.com/Cy452jQ.png)

### Color-Aware Text
With a plethora of color choices available for text, it's difficult to choose one that all users will appreciate and be able to read. Whether you're in doubt of your text and tint color choices, or afraid to let users customize their profile colors because it may disturb the legibility or usability of the app, you no longer have to worry. With Chameleon, you can ensure that all text stands out independent of the background color.

Oh... Chameleon works with the status bar as well. : )

<p align="center">
  <img src="http://i.imgur.com/rTz01Qb.gif" alt="Status Bar"/>
</p>

### Flatify (Beta)
The flatify feature is the most innovative and easy-to-use feature of Chameleon. With only one line of code, every single color on the screen can be converted into the closest flat version of themselves. It works with both storyboard objects and programmatically-created objects.

<p align="center">
  <img src="http://i.imgur.com/QByU4w7.png" alt="Flatify Demo"/>
</p>

### Gradient Colors ![New](http://i.imgur.com/BX3b9ES.png)
With iOS 7, Apple mainstreamed flat colors. Now, with the release of iOS 8, Chameleon strives to elevate the game once more. Say hello to gradient colors. Using one line of code, you can easily set any object's color properties to a gradient (background colors, text colors, tint colors, etc). Other features, like Chameleon's contrasting feature, can also be applied to create a seamless product. Experimentation is encouraged, and gutsiness is applauded!

<p align="center">
  <img src="http://i.imgur.com/7hTa5Pd.png" alt="Gradients"/>
</p>

![](http://i.imgur.com/DqJGhN2.png)

### Xcode Quick Help Documentation ![New](http://i.imgur.com/BX3b9ES.png)

Chameleon's documentation, while written as clearly and concisely as possible (Thank [Asia](https://github.com/aekwan) for that!), may still render some slightly confused. But don't fret! Staying true to our vision of simplifying the entire color process, we added Xcode Quick Help's Documentation Support! Simply highlight a Chameleon method or tap it with three fingers to find out more about what it is and what it does!

<p align="center">
  <img src="http://i.imgur.com/p4KkQ9X.png" alt="Xcode Quick Help Documentation"/>
</p>
  
### Storyboard Palette ![New](http://i.imgur.com/BX3b9ES.png)

If you're like me and love to use storyboard, Chameleon's got you covered. We've provided you with a quick and easy way to access Chameleon colors right from Storyboard, and any other app that uses the color picker (i.e. TextEdit).

<p align="center">
  <img src="http://i.imgur.com/QhhPFHY.gif" alt="Chameleon Palette"/>
</p>


## ⚠️ Requirements

* Objective-C or Swift
* Requires a minimum of iOS 6.0 for Objective-C (No active development for anything earlier, but may work with 5.0) and a minimum of iOS 8.0 for Swift.
* Requires Xcode 6.3 for use in any iOS Project

## 🔑 License
Chameleon is released and distributed under the terms and conditions of the [MIT license](https://github.com/ViccAlexander/Chameleon/blob/master/LICENSE.md).

## 👥 Contributions
If you run into problems, please open up an issue. I also actively welcome pull requests. By contributing to Chameleon you agree that your contributions will be licensed under its MIT license.

If you use the Chameleon framework in your app I would love to hear about it! Drop me a line on [twitter](http://twitter.com/viccsmind).

## 📗 Documentation
All methods, properties, and types available in the Chameleon Framework are documented below. Although many people are not huge fans of macro files, I have included an optional "shorthand syntax" for each of the methods, properties, and types documented below.

#####Documentation Table of Contents  
[● Installation](https://github.com/ViccAlexander/Chameleon#installation)  
[● Storyboard-Add On](https://github.com/ViccAlexander/Chameleon#storyboard-add-on-)  
[● Usage](https://github.com/ViccAlexander/Chameleon#usage)  
[● UIColor Methods](https://github.com/ViccAlexander/Chameleon#uicolor-methods)  
[● UIStatusBarStyle Methods](https://github.com/ViccAlexander/Chameleon#uistatusbarstyle-methods)  
[● Color Scheme Methods](https://github.com/ViccAlexander/Chameleon#color-schemes-methods)  
[● Flatify Methods (Beta)](https://github.com/ViccAlexander/Chameleon#flatify-methods-beta)  

###Installation
####CocoaPods Installation
Chameleon is now available on [CocoaPods](http://cocoapods.org). Simply add the following to your project Podfile, and you'll be good to go.

######Objective-C
```ruby
use_frameworks!

pod 'ChameleonFramework'
```
######Swift
```ruby
use_frameworks!

pod 'ChameleonFramework/Swift'
```
=======
If you're working with Swift there's an additional step. If you'd like to use Chameleon Shorthand, download and drag the following file, [ChameleonShorthand.swift](https://github.com/ViccAlexander/Chameleon/blob/master/Pod/Classes/Swift/ChameleonShorthand.swift), into your project, and you'll be good to go.

####Manual Installation
If you rather install this framework manually, just drag and drop the Chameleon folder into your project, and make sure you check the following boxes.

<p align="center">
  <img src="http://i.imgur.com/gDXaF5F.png" alt="Manual Installation"/>
</p>

Note: Don't forget to manually import the *QuartzCore* & *CoreGraphics* framework if you plan on using gradient colors!

####Storyboard Add-On ![New](http://i.imgur.com/BX3b9ES.png)
Using Chameleon's awesome palette in Storyboard is easy! Simply download and install [Chameleon Palette](https://github.com/ViccAlexander/Chameleon/blob/master/Extras/Chameleon.dmg?raw=true).

Once installed, make sure to restart XCode. You'll find all of Chameleon's colors in the Palette Color Picker whenever they're needed! :)

<p align="center">
  <img src="http://i.imgur.com/XqpFUSt.png" alt="Chameleon Palette"/>
</p>

###Usage
To use the myriad of features in Chameleon, include the following import:

###### If you installed Chameleon using cocoapods:
``` objective-c
#import <ChameleonFramework/Chameleon.h>
```

###### If you installed Chameleon manually:
``` objective-c
#import "Chameleon.h"
```

###UIColor Methods
####Flat Colors
Using a flat color is as easy as adding any other color in your app (if not easier). For example, to set a view's background property to a flat color with a dark shade, you simply have to do the following:

#####Normal Convention:

######Objective-C
``` objective-c
self.view.backgroundColor = [UIColor flatGreenColorDark];
```
######Swift
``` swift
view.backgroundColor = UIColor.flatGreenColorDark()
```

#####Chameleon Shorthand:

######Objective-C
``` objective-c
self.view.backgroundColor = FlatGreenDark;
```
######Swift
``` swift
view.backgroundColor = FlatGreenDark()
```

Setting the color for a light shade is the same, except without adding the *Dark* suffix. (By default, all colors without a *Dark* suffix are light shades). For example:

#####Normal Convention:
######Objective-C
``` objective-c
self.view.backgroundColor = [UIColor flatGreenColor];
```
######Swift
``` swift
view.backgroundColor = UIColor.flatGreenColor()
```

#####Chameleon Shorthand:

######Objective-C
``` objective-c
self.view.backgroundColor = FlatGreen;
```
######Swift
``` swift
view.backgroundColor = FlatGreen()
```

####Random Flat Color
There are two ways to generate a random flat color. If you have no preference as to whether you want a light shade or a dark shade, you can do the following:

#####Normal Convention:
######Objective-C
``` objective-c
self.view.backgroundColor = [UIColor randomFlatColor];
```
######Swift
``` swift
view.backgroundColor = UIColor.randomFlatColor()
```

#####Chameleon Shorthand:
###### Objective-C
``` objective-c
self.view.backgroundColor = RandomFlatColor;
```

######Swift
``` swift
view.backgroundColor = RandomFlatColor()
```

Otherwise, you can perform the following method call to specify whether it should return either a light or dark shade:

#####Normal Convention:
######Objective-C
``` objective-c
[UIColor colorWithRandomFlatColorOfShadeStyle:UIShadeStyleLight];
```

######Swift
``` swift
UIColor(randomFlatColorOfShadeStyle:UIShadeStyle.Light)
```

#####Chameleon Shorthand:
######Objective-C
``` objective-c
RandomFlatColorWithShade(UIShadeStyleLight);
```
######Swift
``` swift
RandomFlatColorWithShade(UIShadeStyle.Light)
```

**UIShadeStyles:**
* `UIShadeStyleLight`
* `UIShadeStyleDark`

####Complementary Color
To generate a complementary color, perform the following method call, remembering to specify the color whose complement you want:

#####Normal Convention:
######Objective-C
``` objective-c
[UIColor colorWithComplementaryFlatColorOf:(UIColor *)color];
```

######Swift
``` swift
UIColor(complementaryFlatColorOf:UIColor!)
```

#####Chameleon Shorthand:
######Objective-C
``` objective-c
ComplementaryFlatColorOf(color);
```

######Swift
``` swift
ComplementaryFlatColorOf(color)
```

####Contrasting Color
The contrasting color feature returns either a dark color a light color depending on what the Chameleon algorithm believes is a better choice. You can specify whether the dark or light colors are flat: *([UIColor flatWhiteColor] & [UIColor flatBlackColorDark])* or non-flat *([UIColor whiteColor] & [UIColor blackColor]).*

If you're trying to set a `UILabel's textColor` property, make sure you provide the `UILabel's backgroundColor`. If your label has a clear `backgroundColor`, just provide the `backgroundColor` property of the object directly behind the `UILabel`.

Here's an example:

#####Normal Convention:
######Objective-C
``` objective-c
[UIColor colorWithContrastingBlackOrWhiteColorOn:(UIColor *)backgroundColor isFlat:(BOOL)flat];
```

######Swift
``` swift
UIColor(contrastingBlackOrWhiteColorOn:UIColor!, isFlat:Bool)
```

#####Chameleon Shorthand:
######Objective-C
``` objective-c
ContrastColorOf(backgroundColor, isFlat);
```

######Swift
``` swift
ContrastColorOf(backgroundColor, isFlat)
```

Note: As off Chameleon 1.1.0, *colorWithContrastingBlackOrWhiteColorOn:* is deprecated. Please use the methods listed above.

####Flat Version of Non-Flat Color
As mentioned previously, this feature is unique to Chameleon. While this feature is in its early stages of operation and can be improved, it is accurate in finding the nearest flat version of any color in the spectrum, and very simple to use:

#####Normal Convention:
######Objective-C
``` objective-c
[UIColor colorWithFlatVersionOf:(UIColor *)color];
```

######Swift
``` swift
UIColor(flatVersionOf:UIColor!)
```

#####Chameleon Shorthand:
######Objective-C
``` objective-c
FlatVersionOf(color);
```

######Swift
``` swift
FlatVersionOf(color)
```

#### Gradient Color ![New](http://i.imgur.com/BX3b9ES.png)
Using a gradient to color an object usually requires a couple of lines of code plus many more lines to superimpose smart contrasting text. Thankfully, Chameleon takes care of that for you. We've introduced a new way to have multicolored objects, and that's with gradients!

#####Gradient Styles
Chameleon provides three simple gradient styles. Gradients can be created from any number of colors you desire as long as at least two colors are provided. Don't forget that the contrasting text feature is also compatible with gradient colors!

**UIGradientStyles:**
* `UIGradientStyleLeftToRight`
* `UIGradientStyleTopToBottom`
* `UIGradientStyleRadial`

#####Normal Convention:
######Objective-C
``` objective-c
[UIColor colorWithGradientStyle:(UIGradientStyle)gradientStyle withFrame:(CGRect)frame andColors:(NSArray *)colors];
```

######Swift
``` swift
UIColor(gradientStyle:UIGradientStyle, withFrame:CGRect, andColors:[AnyObject]!)
```

#####Chameleon Shorthand:
######Objective-C
``` objective-c
GradientColor(gradientStyle, frame, colors);
```

######Swift
``` swift
GradientColor(gradientStyle, frame, colors)
```

Objective-C Note: If you use the Chameleon Shorthand, and use the NSArray literal ```@[]``` to set the array of colors, make sure you add parenthesis around it, or else you'll get an error.

Note: `UIGradientStyleRadial` only uses a maximum of 2 colors at the moment. So if more colors are provided, they will not show.

###UIStatusBarStyle Methods
####Contrasting UIStatusBarStyle
Many apps on the market, even the most popular ones, overlook this aspect of a beautiful app: the status bar style. Assuming you have a `ViewController` embedded in a `NavigationController`, do the following in the `NavigationController`'s class:

#####Normal Convention:
######Objective-C
``` objective-c
- (UIStatusBarStyle)preferredStatusBarStyle {
    return [ChameleonStatusBar statusBarStyleForColor:(UIColor *)backgroundColor];
}
```

######Swift
``` swift
func preferredStatusBarStyle() -> UIStatusBarStyle {
    return ChameleonStatusBar.statusBarStyleForColor(backgroundColor)
}
```

#####Chameleon Shorthand:
######Objective-C
``` objective-c
- (UIStatusBarStyle)preferredStatusBarStyle {
    return StatusBarContrastColorOf((UIColor *)backgroundColor);
}
```

######Swift
``` swift
func preferredStatusBarStyle() -> UIStatusBarStyle {
    return StatusBarContrastColorOf(backgroundColor)
}
```

<<<<<<< Updated upstream
You can also use Swift Extensions (No need for subclassing):

``` swift
extension UINavigationController {
    public override func preferredStatusBarStyle() -> UIStatusBarStyle {
        //Shorthand
        if let navBarTintColor = self.navigationBar.barTintColor {
            return StatusBarContrastColorOf(navBarTintColor)
        } else {
            return .Default
        }
    }
}
```

=======
>>>>>>> Stashed changes
Note: You should set the `backgroundColor` of the `navigationBar`'s `barTintColor` property if you want the status bar text to always contrast the navigation bar. If you're only using a `ViewController` just call this method in that controller's respective class file.

###Color Schemes Methods
*Note: Due to the limited number of flat colors currently available, color schemes may return results that reuse certain flat colors. Because of this redundancy, we have provided an option to return either a flat color scheme or a non-flat color scheme until more flat colors are added to the inventory.*

The initial color can be either a non-flat color or flat color. Chameleon will return an `NSArray` of 5 `UIColors` in which the original color will be the third object of the scheme. This allows for Chameleon to designate the colors of the color scheme (2 colors counter-clockwise and 2 clockwise from the initial color), and thus, the chosen colors are aligned specifically in that order. 

####Analogous Color Scheme
An analogous color scheme uses three adjacent colors on the color wheel. According to Wikipedia, it’s best used with either warm or cool colors, creating a cohesive collection with certain temperature qualities as well as proper color harmony; however, this particular scheme lacks contrast and is less vibrant than complementary schemes. Within the scheme, choose one color to dominate and two to support. The remaining two colors should be used (along with black, white or gray) as accents.

####Complementary Color Scheme
A complementary color scheme uses opposite colors on the color wheel. To put into slightly more technical terms, they are two colors that, when combined, produce a neutral color. Complementary colors are tricky to use extensively, but work well when you want a point of emphasis. Complementary colors are generally not favorable to use for text. 

####Triadic Color Scheme
A triadic scheme uses evenly spaced colors on the color wheel. The colors tend to be richly vivid and offer a higher degree of contrast while, at the same time, retain color harmony. Let one color dominate and use the two others for accent.

####Getting Colors in a Color Scheme
To retrieve an array of colors, first make sure to initialize an NSMutableArray (in case you want to use the same array to replace with different colors later):

#####Normal Convention:
######Objective-C
``` objective-c
NSMutableArray *colorArray = [NSMutableArray alloc] initWithArray:[NSArray arrayOfColorsWithColorScheme:(ColorScheme)colorScheme 
                                                                                                    with:(UIColor *)color 
                                                                                             flatScheme:(BOOL)isFlatScheme]];
```

######Swift
``` swift
var colorArray = NSArray(ofColorsWithColorScheme:ColorScheme, with:UIColor!, flatScheme:Bool)
```

#####Chameleon Shorthand:
######Objective-C
``` objective-c
NSMutableArray *colorArray = [[NSMutableArray alloc] initWithArray:ColorScheme(colorSchemeType, color, isFlatScheme)];
```

######Swift
``` swift
var colorArray = ColorSchemeOf(colorSchemeType, color, isFlatScheme)
```

#####Example:
Assuming you want to generate an analogous color scheme for the light shade of Flat Red, perform the following method call:

#####Normal Convention:
######Objective-C
``` objective-c
NSMutableArray *colorArray = [NSMutableArray alloc] initWithArray:[NSArray arrayOfColorsWithColorScheme:ColorSchemeAnalogous
                                                                                                    with:[UIColor flatRedColor] 
                                                                                             flatScheme:YES]];
```

######Swift
``` swift
var colorArray = NSArray(ofColorsWithColorScheme:ColorScheme.Analogous, with:UIColor.flatRedColor(), flatScheme:true)
<<<<<<< Updated upstream
```

#####Chameleon Shorthand:
``` objective-c
NSMutableArray *colorArray = [[NSMutableArray alloc] initWithArray:ColorScheme(ColorSchemeAnalogous, FlatRed, YES)];
```

######Swift
``` swift
var colorArray = ColorSchemeOf(ColorScheme.Analogous, FlatRed(), true)
```  
  
You can then retrieve each individual color the same way you would normally retrieve any object from an array:
#####Normal Convention:
=======
```  
  
#####Chameleon Shorthand:
######Objective-C
``` objective-c
NSMutableArray *colorArray = [[NSMutableArray alloc] initWithArray:ColorScheme(ColorSchemeAnalogous, FlatRed, YES)];
```

######Swift
``` swift
var colorArray = ColorSchemeOf(ColorScheme.Analogous, FlatRed(), true)
```

You can then retrieve each individual color the same way you would normally retrieve any object from an array:

>>>>>>> Stashed changes
######Objective-C
```objective-c
UIColor *firstColor = colorArray[0];
```

######Swift
``` swift
var firstColor = colorArray[0] as! UIColor
<<<<<<< Updated upstream
```  
  
=======
```

>>>>>>> Stashed changes
###Flatify Methods (Beta)
Again, this is the hallmark feature of Chameleon. Although 99% of objects can be identified and recolored, the `Flatify` feature can, as of yet, only be called from a `UIViewController` class. Other controllers will soon be supported. Keep in mind this is a beta feature, and it may not be 100% spot-on. :)

*Note: Although all colors will flatify to the closest accurate flat color, sometimes our eyes may not agree with it visually. For example some blues may flatten to purple, but I'm figuring out a way to factor in more visually pleasing results.*

If a `UIViewController` is embedded inside a `UINavigationController`, the `navigationBar` and anything inside of it can be "flatified" (Take a look at the sample app for more information).

#####Implementing Flatify
Implementing this feature is so easy, there was no need to build a Chameleon shorthand.

#####Normal Convention:
######Objective-C
```objective-c
[self flatify];
<<<<<<< Updated upstream
```

######Swift
``` swift
self.flatify()
```

=======
```  
  
######Swift
``` swift
self.flatify()
```  
  
>>>>>>> Stashed changes
#####Implementing Flatify With Contrasting Colors

We've also built a secondary flatify feature that not only flattens object colors, but also recognizes text and tint colors. After detecting such properties, it applies smart contrast to them, returning either a`flatBlackDark` or `flatWhite` color.

To implement this perform the following method call:

#####Normal Convention:
######Objective-C
``` objective-c
[self flatifyAndContrast];
```

######Swift
``` swift
self.flatifyAndContrast()
```

*Note: In order to ship out Chameleon as soon as possible, some features were overlooked. However, they will be added promptly, here's a couple of things that may not work with the flatify feature:*

* *Objects stored in a `UIView` that is located on top another `UIView`.*
* *`UIStatusBarStyle`(In the mean time, use the status bar methods provided above).*

## 👑 Author
Chameleon was developed by **Vicc Alexander** [(@ViccsMind)](https://twitter.com/viccsmind).

Using Chameleon in your App? [Let me know](https://twitter.com/viccsmind). 🌈📲  

## 👏 Special Thanks

Huge thanks to [**Alexander List**](https://github.com/alist), [**An Tran**](https://github.com/peacemoon), [**Asia Kwan**](https://github.com/aekwan), [**@Bre7**](https://github.com/bre7), [**Daniel Wang**](https://github.com/ddwang), [**Jonathan Hooper**](https://github.com/jmhooper), [**Jose Herran**](https://github.com/jherran), [**Marlon López**](https://twitter.com/MarlonMaxmm), [**Michael Cascio**](https://github.com/cascio), [**Saul López**](https://twitter.com/SaaauuuuL), [**Sophie Fader**](https://github.com/sfader), and [**Vincent Wayne**](https://github.com/smokyonion), for continuously contributing your help, and your time in improving Chameleon. All of you rock! 😆

## 📝 To Do List
*No particular order.*
* ~~Cocoapods Support~~ ![1.0.1](http://i.imgur.com/8Li5aRR.png)
* ~~Table of Contents~~ ![1.0.1](http://i.imgur.com/8Li5aRR.png)
* ~~Storyboard Color Picker Add-On~~ ![1.1.0](http://i.imgur.com/Py4QvaK.png)
* ~~Xcode In-App Documentation~~ ![1.1.0](http://i.imgur.com/Py4QvaK.png)
* ~~Switch from RGB values over to HSB and LAB~~ ![1.1.0](http://i.imgur.com/Py4QvaK.png)
* ~~Gradient Colors~~ ![1.1.0](http://i.imgur.com/Py4QvaK.png)
* ~~Update GradientStyle & ShadeStyle Syntax~~ ![1.1.1](http://i.imgur.com/AHxj8Rb.png)
* ~~Add Radial Gradient Support~~ ![1.1.1](http://i.imgur.com/AHxj8Rb.png)
* ~~Fix Swift Conflict with `initWithArray:for:flatScheme:` method~~  ![1.1.1](http://i.imgur.com/7NrZ7yx.png)
* ~~Swift Support~~ ![1.1.3](http://i.imgur.com/WgpBlLo.png)  
* Update Sample App  
* Color Scheme From Images
* Flatify Support for other Controllers
* UIAppearance Convenience Methods

## 📄 Change Log
### 1.2.0
• Fixed cocoapods installation error [#30](https://github.com/ViccAlexander/Chameleon/issues/30).  
• Updated Swift syntax to Swift 1.2 *(Fixed by [**@peacemoon**](https://github.com/peacemoon))*.    
• Split Objective-C & Swift Files into separate folders to keep files better organized.  
• Renamed `Constants.swift` to `ChameleonShorthand.swift`

###### Deprecated Methods
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


