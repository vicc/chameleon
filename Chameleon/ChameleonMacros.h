
//  ChameleonMacros.h

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

//Quick & Easy Shorthand for RGB Colors
#define rgb(r,g,b) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0]

//UIColor Methods Shorthand
#define FlatColor(color,shade) andShade(shade) [UIColor colorWithFlatColor:color andShadeStyle:shade]
#define ComplementaryColorOf(color) [UIColor colorWithComplementaryFlatColorOf:color]
#define FlatVersionOf(color) [UIColor colorWithFlatVersionOf:color]
#define ContrastColorOf(backgroundColor) [UIColor colorWithContrastingBlackOrWhiteColorOn:backgroundColor]
#define RandomColorWithShade(shade) [UIColor colorWithRandomFlatColorOfShadeStyle:shade]

//UIStatusBar Methods Shorthand
#define StatusBarContrastColorOf(backgroundColor) [ChameleonStatusBar statusBarStyleForColor:backgroundColor]

//NSArray Methods Shorthand
#define ColorScheme(colorSchemeType,color,isFlatScheme) [NSArray arrayOfColorsWithColorScheme:colorSchemeType for:color flatScheme:isFlatScheme]

//Special Colors Shorthand
#define RandomFlatColor [UIColor randomFlatColor]

//Chameleon Flat Colors - Light Shades Shorthand
#define FlatBlack rgb(43, 43, 43)
#define FlatBlue rgb(80, 101, 161)
#define FlatBrown rgb(94, 69, 52)
#define FlatCoffee rgb(163, 134, 113)
#define FlatForestGreen rgb(52, 95, 65)
#define FlatGray rgb(149, 165, 166)
#define FlatGreen rgb(46, 204, 113)
#define FlatLime rgb(165, 198, 59)
#define FlatMagenta rgb(155, 89, 182)
#define FlatMaroon rgb(121, 48, 42)
#define FlatMint rgb(26, 188, 156)
#define FlatNavyBlue rgb(52, 73, 94)
#define FlatOrange rgb(230, 126, 34)
#define FlatPink rgb(245, 110, 166)
#define FlatPlum rgb(94, 52, 94)
#define FlatPowderBlue rgb(172, 196, 253)
#define FlatPurple rgb(116, 94, 197)
#define FlatRed rgb(231, 76, 60)
#define FlatSand rgb(240, 222, 180)
#define FlatSkyBlue rgb(52, 152, 219)
#define FlatTeal rgb(58, 111, 129)
#define FlatWatermelon rgb(239, 113, 122)
#define FlatWhite rgb(236, 240, 241)
#define FlatYellow rgb(241, 196, 15)

//Chameleon Flat Colors - Dark Shades Shorthand
#define FlatBlackDark rgb(38, 38, 38)
#define FlatBlueDark rgb(57, 76, 129)
#define FlatBrownDark rgb(80, 59, 44)
#define FlatCoffeeDark rgb(142, 114, 94)
#define FlatForestGreenDark rgb(45, 80, 54)
#define FlatGrayDark rgb(127, 140, 141)
#define FlatGreenDark rgb(39, 174, 96)
#define FlatLimeDark rgb(142, 176, 33)
#define FlatMagentaDark rgb(142, 68, 173)
#define FlatMaroonDark rgb(102, 38, 33)
#define FlatMintDark rgb(22, 160, 133)
#define FlatNavyBlueDark rgb(44, 62, 80)
#define FlatOrangeDark rgb(211, 84, 0)
#define FlatPinkDark rgb(219, 86, 142)
#define FlatPlumDark rgb(79, 43, 79)
#define FlatPowderBlueDark rgb(140, 166, 225)
#define FlatPurpleDark rgb(91, 72, 162)
#define FlatRedDark rgb(192, 57, 43)
#define FlatSandDark rgb(213, 194, 149)
#define FlatSkyBlueDark rgb(41, 128, 185)
#define FlatTealDark rgb(53, 98, 114)
#define FlatWatermelonDark rgb(217, 84, 89)
#define FlatWhiteDark rgb(189, 195, 199)
#define FlatYellowDark rgb(243, 156, 18)
