
//  ChameleonShorthand.swift

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

import UIKit

// MARK: - Chameleon - UIColor Methods Shorthand

//UIColor Methods Shorthand
public func ComplementaryFlatColorOf(color: UIColor) -> UIColor {
    return UIColor(complementaryFlatColorOf: color)
}

public func RandomFlatColorWithShade(shade: UIShadeStyle) -> UIColor {
    return UIColor(randomFlatColorOfShadeStyle: shade)
}

public func ContrastColorOf(backgroundColor: UIColor, returnFlat: Bool) -> UIColor {
    return UIColor(contrastingBlackOrWhiteColorOn: backgroundColor, isFlat: returnFlat)
}

public func GradientColor(gradientStyle: UIGradientStyle, frame: CGRect, colors: [UIColor]) -> UIColor {
    return UIColor(gradientStyle: gradientStyle, withFrame: frame, andColors: colors)
}

public func HexColor(hexString: String, withAlpha alpha: CGFloat = 1.0) -> UIColor {
    return UIColor(hexString: hexString, withAlpha: alpha)
}

public func AverageColorFromImage(image: UIImage) -> UIColor {
    return UIColor(averageColorFromImage: image)
}

// MARK: - Chameleon - NSArray Methods Shorthand

//NSArray Methods Shorthand
// TODO Array Extension needed ;)

/*
public func ColorSchemeOf(colorSchemeType:ColorScheme, color:UIColor, isFlatScheme:Bool) -> Array <UIColor> {
    return NSArray(ofColorsWithColorScheme:colorSchemeType, with:color, flatScheme: isFlatScheme) as! [UIColor]
}*/

public func ColorsFromImage(image: UIImage, _ withFlatScheme: Bool) -> NSArray {
    return NSArray(ofColorsFromImage: UIImage(), withFlatScheme: true)
}


// MARK: - Chameleon - Special Colors Shorthand

//Special Colors Shorthand
public func RandomFlatColor() -> UIColor {
    return UIColor.randomFlatColor()
}

public func ClearColor() -> UIColor {
    return UIColor.clearColor()
}


// MARK: - Chameleon - Light Shades Shorthand

//Chameleon Flat Colors - Light Shades Shorthand
public func FlatBlack() -> UIColor {
	return UIColor.flatBlackColor() 
}

public func FlatBlue() -> UIColor {
	return UIColor.flatBlueColor() 
}

public func FlatBrown() -> UIColor {
	return UIColor.flatBrownColor() 
}

public func FlatCoffee() -> UIColor {
	return UIColor.flatCoffeeColor() 
}

public func FlatForestGreen() -> UIColor {
	return UIColor.flatForestGreenColor() 
}

public func FlatGray() -> UIColor {
	return UIColor.flatGrayColor() 
}

public func FlatGreen() -> UIColor {
	return UIColor.flatGreenColor() 
}

public func FlatLime() -> UIColor {
	return UIColor.flatLimeColor() 
}

public func FlatMagenta() -> UIColor {
	return UIColor.flatMagentaColor() 
}

public func FlatMaroon() -> UIColor {
	return UIColor.flatMaroonColor() 
}

public func FlatMint() -> UIColor {
	return UIColor.flatMintColor() 
}

public func FlatNavyBlue() -> UIColor {
	return UIColor.flatNavyBlueColor() 
}

public func FlatOrange() -> UIColor {
	return UIColor.flatOrangeColor() 
}

public func FlatPink() -> UIColor {
	return UIColor.flatPinkColor() 
}

public func FlatPlum() -> UIColor {
	return UIColor.flatPlumColor() 
}

public func FlatPowderBlue() -> UIColor {
	return UIColor.flatPowderBlueColor() 
}

public func FlatPurple() -> UIColor {
	return UIColor.flatPurpleColor() 
}

public func FlatRed() -> UIColor {
	return UIColor.flatRedColor() 
}

public func FlatSand() -> UIColor {
	return UIColor.flatSandColor() 
}

public func FlatSkyBlue() -> UIColor {
	return UIColor.flatSkyBlueColor() 
}

public func FlatTeal() -> UIColor {
	return UIColor.flatTealColor() 
}

public func FlatWatermelon() -> UIColor {
	return UIColor.flatWatermelonColor() 
}

public func FlatWhite() -> UIColor {
	return UIColor.flatWhiteColor() 
}

public func FlatYellow() -> UIColor {
	return UIColor.flatYellowColor() 
}


// MARK: - Chameleon - Dark Shades Shorthand

//Chameleon Flat Colors - Dark Shades Shorthand
public func FlatBlackDark() -> UIColor {
	return UIColor.flatBlackColorDark() 
}

public func FlatBlueDark() -> UIColor {
	return UIColor.flatBlueColorDark() 
}

public func FlatBrownDark() -> UIColor {
	return UIColor.flatBrownColorDark() 
}

public func FlatCoffeeDark() -> UIColor {
	return UIColor.flatCoffeeColorDark() 
}

public func FlatForestGreenDark() -> UIColor {
	return UIColor.flatForestGreenColorDark() 
}

public func FlatGrayDark() -> UIColor {
	return UIColor.flatGrayColorDark() 
}

public func FlatGreenDark() -> UIColor {
	return UIColor.flatGreenColorDark() 
}

public func FlatLimeDark() -> UIColor {
	return UIColor.flatLimeColorDark() 
}

public func FlatMagentaDark() -> UIColor {
	return UIColor.flatMagentaColorDark() 
}

public func FlatMaroonDark() -> UIColor {
	return UIColor.flatMaroonColorDark() 
}

public func FlatMintDark() -> UIColor {
	return UIColor.flatMintColorDark() 
}

public func FlatNavyBlueDark() -> UIColor {
	return UIColor.flatNavyBlueColorDark() 
}

public func FlatOrangeDark() -> UIColor {
	return UIColor.flatOrangeColorDark() 
}

public func FlatPinkDark() -> UIColor {
	return UIColor.flatPinkColorDark() 
}

public func FlatPlumDark() -> UIColor {
	return UIColor.flatPlumColorDark() 
}

public func FlatPowderBlueDark() -> UIColor {
	return UIColor.flatPowderBlueColorDark() 
}

public func FlatPurpleDark() -> UIColor {
	return UIColor.flatPurpleColorDark() 
}

public func FlatRedDark() -> UIColor {
	return UIColor.flatRedColorDark() 
}

public func FlatSandDark() -> UIColor {
	return UIColor.flatSandColorDark() 
}

public func FlatSkyBlueDark() -> UIColor {
	return UIColor.flatSkyBlueColorDark() 
}

public func FlatTealDark() -> UIColor {
	return UIColor.flatTealColorDark() 
}

public func FlatWatermelonDark() -> UIColor {
	return UIColor.flatWatermelonColorDark() 
}

public func FlatWhiteDark() -> UIColor {
	return UIColor.flatWhiteColorDark() 
}

public func FlatYellowDark() -> UIColor {
	return UIColor.flatYellowColorDark() 
}
