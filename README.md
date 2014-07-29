Chameleon for iOS
=========


![Chameleon Header](http://i.imgur.com/GkcP4e9.png)

## Introduction

**Chameleon** is a lightweight, yet powerful, color framework for iOS. It is built on the idea that software applications should function effortlessly while simultaneously maintaining their beautiful interfaces.

Chameleon is the **first and only** color framework on the market that focuses its full attention and efforts on "flat colors". With Chameleon, you can easily forget about `UIColor` RGB values, wasting hours figuring out the right color combinations to use in your app, and worrying about whether your text will be readable on the various background colors of your app. 

### Chameleon vs Other Color Libraries

Chameleon solves problems that many other color libraries tend to overlook. With their distracting and superfluous features, other libraries confuse and misdirect developers. They create extensions that display a few colors, but leave developers to essentially create cohesive color palettes and replace countless lines of `UIColor` code if they desire to switch to a "flat color" themselves. But now, with only a few characters of code, Chameleon does all the heavy lifting.

## Product Features

### 100% Flat & Gorgeous

Chameleon features over 24 hand-picked colors that come in both light and dark shades. 

![Swatches](http://i.imgur.com/K648Zzr.png)

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

![Status Bar](http://i.imgur.com/rTz01Qb.gif)

### Flatify
The flatify feature is the most innovative and easy-to-use feature of Chameleon. With only one line of code, every single color on the screen can be converted into the closest flat version of themselves. It works with both storyboard objects and programmatically-created objects.

![Flatfiy Demo](http://i.imgur.com/QByU4w7.png)

##Requirements

* Built with and for Objective-C
* Requires a minimum of iOS 6.0 (No active development for anything earlier, but may work with 5.0)
* Requires Xcode 5.1.1 for use in any iOS Project
* Uses Apple LLVM compiler 5.1

##License
Chameleon is released and distributed under the terms and conditions of the [MIT license](https://github.com/VAlexander/Chameleon/blob/master/LICENSE).

##Contributions
If you run into problems, please open up an issue. I also actively welcome pull requests. By contributing to Chameleon you agree that your contributions will be licensed under its MIT license.

If you use the Chameleon framework in your app I would love to hear about it! Drop me a line at madewithchameleon@gmail.com or hit me up on [twitter](http://twitter.com/viccsmind).

##Special Thanks
Huge thanks to the following people for helping make Chameleon possible (seriously).

* **Asia Kwan** *(Wondering where the super awesome name idea for this framework came from? Thank her awesome mind! Not only did she pitch many ideas and suggestions, but she also reworded the entire documentation on here to make it more clear, concise, and eloquent).*

* **[Saul López](https://twitter.com/SaaauuuuL)** *(MIT Genius. He aided with several algorithms, including color difference formulas and euclidian distances).*

* **[Marlon López](https://twitter.com/marlonmaxmm)** *(King Beta Tester. He filtered ideas and tested the framework in its various stages. S/O: Thanks for all the time you dedicated to listening about this)!*

* **[Ahmet Sulek](https://twitter.com/ahmetsulek)**  *(Chameleon was inspired by my constant use of [FlatUIColors](http://flatuicolors.com) which is an awesome project that Ahmet built. Half of the colors used in Chameleon stemmed from his project!).*

## To Do List
* Cocoapod Support
* Update Sample App
* Xcode In-App Documentation
* Swift Version
* Color Scheme From Images
* Added Flatify Support for other controllers

##Documentation
All methods, properties, and types available in the Chameleon Framework are documented below. Although many people are not huge fans of macro files, I have included an optional "shorthand syntax" for each of the methods, properties, and types documented below.

###Installation
####CocoaPods Installation
CocoaPod support is coming soon!

####Manual Installation
Drag and drop the Chameleon folder into your project, and make sure you check the following boxes.

![Manual Installation](http://i.imgur.com/gDXaF5F.png)

And that's it.

###Usage
To use the myriad of features in Chameleon, include the following import:
`#import <Chameleon.h>`

###UIColor Methods
####Flat Colors
Using a flat color is as easy as adding any other color in your app (if not easier). For example, to set a view's background property to a flat color with a dark shade, you simply have to do the following:

######Normal Convention:
`self.view.backgroundColor = [UIColor flatGreenColorDark];`

######Chameleon Shorthand:
`self.view.backgroundColor = FlatGreenDark;`

Setting the color for a light shade is the same, except without adding the *Dark* suffix. (By default, all colors without a *Dark* suffix are light shades). For example:

######Normal Convention:
`self.view.backgroundColor = [UIColor flatGreenColor];`

######Chameleon Shorthand:
`self.view.backgroundColor = FlatGreen;`

####Random Flat Color
There are two ways to generate a random flat color. If you have no preference as to whether you want a light shade or a dark shade, you can do the following:

######Normal Convention:
`self.view.backgroundColor = [UIColor randomFlatColor];`

######Chameleon Shorthand:
`self.view.backgroundColor = RandomFlatColor;`

Otherwise, you can perform the following method call to specify whether it should return either a light or dark shade:

######Normal Convention:
`[UIColor colorWithRandomFlatColorOfShadeStyle:light];`

######Chameleon Shorthand:
`RandomColorWithShade(light);`

####Complementary Color
To generate a complementary color, perform the following method call, remembering to specify the color whose complement you want:

######Normal Convention:
`[UIColor colorWithComplementaryFlatColorOf:(UIColor *)color];`

######Chameleon Shorthand:
`ComplementaryColorOf(color);`

####Contrasting Color
The contrasting color feature returns either a `FlatBlackDark` color a `FlatWhite` color depending on what the algorithm believes is a better choice.

If you're trying to set a `UILabel's textColor` property, make sure you provide the `UILabel's backgroundColor`. If your label has a clear `backgroundColor`, just provide the `backgroundColor` property of the object directly behind the `UILabel`.

Here's an example:

######Normal Convention:
`[UIColor colorWithContrastingBlackOrWhiteColorOn:(UIColor *)backgroundColor];`

######Chameleon Shorthand:
`ContrastColorOf(backgroundColor);`

Note: If a clear color is passed to this method, it will return a `flatWhite` color by default.

####Flat Version of Non-F1lat Color
As mentioned previously, this feature is unique to Chameleon. While this feature is in its early stages of operation and can be improved, it is accurate in finding the nearest flat version of any color in the spectrum, and very simple to use:

######Normal Convention:
`[UIColor colorWithFlatVersionOf:(UIColor *)color];`

######Chameleon Shorthand:
`FlatVersionOf(color);`

###UIStatusBarStyle Methods
####Contrasting UIStatusBarStyle
Many apps on the market, even the most popular ones, overlook this aspect of a beautiful app: the status bar style. Assuming you have a `ViewController` embedded in a `NavigationController`, do the following in the `NavigationController`'s class:

    - (UIStatusBarStyle)preferredStatusBarStyle {
    return [ChameleonStatusBar statusBarStyleForColor:(UIColor *)backgroundColor];
    }

Note: You should set the `backgroundColor` of the `navigationBar`'s `barTintColor` property if you want the status bar text to always contrast the navigation bar. If you're only using a `ViewController` just call this method in that controller's respective class file.

###Color Schemes
*Note: Due to the limited number of flat colors currently available, color schemes may return results that reuse certain flat colors. Because of this redundancy, we have provided an option to return either a flat color scheme or a non-flat color scheme until more flat colors are added to the inventory.*

The initial color can be either a non-flat color or flat color. Chameleon will return an `NSArray` of 5 `UIColors` in which the original color will be the third object of the scheme. This allows for Chameleon to designate the colors of the color scheme (2 colors counter-clockwise and 2 clockwise from the initial color), and thus, the chosen colors are aligned specifically in that order. 

####Analogous Color Scheme
An analogous color scheme uses three adjacent colors on the color wheel. According to Wikipedia, it’s best used with either warm or cool colors, creating a cohesive collection with certain temperature qualities as well as proper color harmony; however, this particular scheme lacks contrast and is less vibrant than complementary schemes. Within the scheme, choose one color to dominate and two to support. The remaining two colors should be used (along with black, white or gray) as accents.

####Complementary Color Scheme
A complementary color scheme uses opposite colors on the color wheel. To put into slightly more technical terms, they are two colors that, when combined, produce a neutral color. Complementary colors are tricky to use extensively, but work well when you want a point of emphasis. Complementary colors are generally not favorable to use for text. 

####Triadic Color Scheme
A triadic scheme uses evenly spaced colors on the color wheel. The colors tend to be richly vivid and offer a higher degree of contrast while, at the same time, retain color harmony. Let one color dominate and use the two others for accent.

####Getting Colors in a Color Scheme
To retrive an array of colors, first make sure to initialize an NSMutableArray (in case you want to use the same array to replace with different colors later):

`NSMutableArray *colorArray = [[NSMutableArray alloc] init];`

######Normal Convention:
    [colorArray addObjectsFromArray:[NSArray arrayOfColorsWithColorScheme:(ColorScheme)colorScheme 
                                                                       for:(UIColor *)color
                                                                flatScheme:(BOOL)isFlatScheme]];

######Chameleon Shorthand:
`[colorArray addObjectsFromArray:ColorScheme(colorScheme, color, isFlatScheme)];`

#####Example:
Assuming you want to generate an analogous color scheme for the light shade of Flat Red, perform the following method call:

######Normal Convention:
    [colorArray addObjectsFromArray:[NSArray arrayOfColorsWithColorScheme:ColorSchemeAnalogous 
                                                                       for:[UIColor flatRedColor] 
                                                                flatScheme:YES]];

######Chameleon Shorthand:
`colorArray addObjectsFromArray:ColorScheme(ColorSchemeAnalogous, flatRedColor, YES)];`

You can then retrieve each individual color the same way you would normally retrive any object from an array:

`UIColor *firstColor = colorArray[0];`

###Flatify
Again, this is the hallmark feature of Chameleon. Although 99% of objects can be identified and recolored, the `Flatify` feature can, as of yet, only be called from a `UIViewController` class. Other controllers will soon be supported.

If a `UIViewController` is embedded inside a `UINavigationController`, the `navigationBar` and anything inside of it can be "flatified" (Take a look at the sample app for more information).

#####Implementing Flatify
Implementing this feature is so easy, there was no need to build a Chameleon shorthand.

######Normal Convention:
`[self flatfify];`

#####Implementing Flatify With Contrasting Colors

We've also built a secondary flatify feature that not only flattens object colors, but also recognizes text and tint colors. After detecting such properties, it applies smart contrast to them, returning either a`flatBlackDark` or `flatWhite` color.

To implement this perform the following method call:

######Normal Convention:
`[self flatifyAndContrast];`

*Note: In order to ship out Chameleon as soon as possible, some features were overlooked. However, they will be added promptly, here's a couple of things that may not work with the flatify feature:*

* *Objects stored in a `UIView` that is located on top another `UIView`.*
* *`UIStatusBarStyle`(In the mean time, use the status bar methods provided above).*

