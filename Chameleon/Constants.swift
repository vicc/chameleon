
//  Chameleon.swift

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
 
// MARK: - Chameleon - UIColor Methods Shorthand

//UIColor Methods Shorthand
func ComplementaryFlatColorOf(color: UIColor) -> UIColor {
    return UIColor(complementaryFlatColorOf: color)
}

func FlatVersionOf(color: UIColor) -> UIColor {
    return UIColor(flatVersionOf: color)
}

func RandomFlatColorWithShade(shade: UIShadeStyle) -> UIColor {
    return UIColor(randomFlatColorOfShadeStyle: shade)
}

func ContrastColorOf(backgroundColor: UIColor, returnFlat: Bool) -> UIColor {
    return UIColor(contrastingBlackOrWhiteColorOn: backgroundColor, isFlat: returnFlat)
}

func GradientColor(gradientStyle: UIGradientStyle, frame: CGRect, colors: [UIColor]) -> UIColor {
    return UIColor(gradientStyle: gradientStyle, withFrame: frame, andColors: colors)
}


// MARK: - Chameleon - UIStatusBar Methods Shorthand

//UIStatusBar Methods Shorthand
func StatusBarContrastColorOf(backgroundColor: UIColor) -> UIStatusBarStyle {
    return ChameleonStatusBar.statusBarStyleForColor(backgroundColor)
}

// MARK: - Chameleon - NSArray Methods Shorthand

//NSArray Methods Shorthand
// TODO Array Extension needed ;)
func ColorScheme(_colorSchemeType: ColorScheme, _color: UIColor, _isFlatScheme: Bool) -> Array<UIColor> {
    return NSArray(ofColorsWithColorScheme: _colorSchemeType, with: _color, flatScheme: _isFlatScheme) as [UIColor]
}

// MARK: - Chameleon - Special Colors Shorthand

//Special Colors Shorthand
func RandomFlatColor() -> UIColor {
    return UIColor.randomFlatColor()
}

func ClearColor() -> UIColor {
    return UIColor.clearColor()
}


// MARK: - Chameleon - Light Shades Shorthand

//Chameleon Flat Colors - Light Shades Shorthand
func FlatBlack() -> UIColor {
	return UIColor.flatBlackColor() 
}

func FlatBlue() -> UIColor {
	return UIColor.flatBlueColor() 
}

func FlatBrown() -> UIColor {
	return UIColor.flatBrownColor() 
}

func FlatCoffee() -> UIColor {
	return UIColor.flatCoffeeColor() 
}

func FlatForestGreen() -> UIColor {
	return UIColor.flatForestGreenColor() 
}

func FlatGray() -> UIColor {
	return UIColor.flatGrayColor() 
}

func FlatGreen() -> UIColor {
	return UIColor.flatGreenColor() 
}

func FlatLime() -> UIColor {
	return UIColor.flatLimeColor() 
}

func FlatMagenta() -> UIColor {
	return UIColor.flatMagentaColor() 
}

func FlatMaroon() -> UIColor {
	return UIColor.flatMaroonColor() 
}

func FlatMint() -> UIColor {
	return UIColor.flatMintColor() 
}

func FlatNavyBlue() -> UIColor {
	return UIColor.flatNavyBlueColor() 
}

func FlatOrange() -> UIColor {
	return UIColor.flatOrangeColor() 
}

func FlatPink() -> UIColor {
	return UIColor.flatPinkColor() 
}

func FlatPlum() -> UIColor {
	return UIColor.flatPlumColor() 
}

func FlatPowderBlue() -> UIColor {
	return UIColor.flatPowderBlueColor() 
}

func FlatPurple() -> UIColor {
	return UIColor.flatPurpleColor() 
}

func FlatRed() -> UIColor {
	return UIColor.flatRedColor() 
}

func FlatSand() -> UIColor {
	return UIColor.flatSandColor() 
}

func FlatSkyBlue() -> UIColor {
	return UIColor.flatSkyBlueColor() 
}

func FlatTeal() -> UIColor {
	return UIColor.flatTealColor() 
}

func FlatWatermelon() -> UIColor {
	return UIColor.flatWatermelonColor() 
}

func FlatWhite() -> UIColor {
	return UIColor.flatWhiteColor() 
}

func FlatYellow() -> UIColor {
	return UIColor.flatYellowColor() 
}


// MARK: - Chameleon - Dark Shades Shorthand

//Chameleon Flat Colors - Dark Shades Shorthand
func FlatBlackDark() -> UIColor {
	return UIColor.flatBlackColorDark() 
}

func FlatBlueDark() -> UIColor {
	return UIColor.flatBlueColorDark() 
}

func FlatBrownDark() -> UIColor {
	return UIColor.flatBrownColorDark() 
}

func FlatCoffeeDark() -> UIColor {
	return UIColor.flatCoffeeColorDark() 
}

func FlatForestGreenDark() -> UIColor {
	return UIColor.flatForestGreenColorDark() 
}

func FlatGrayDark() -> UIColor {
	return UIColor.flatGrayColorDark() 
}

func FlatGreenDark() -> UIColor {
	return UIColor.flatGreenColorDark() 
}

func FlatLimeDark() -> UIColor {
	return UIColor.flatLimeColorDark() 
}

func FlatMagentaDark() -> UIColor {
	return UIColor.flatMagentaColorDark() 
}

func FlatMaroonDark() -> UIColor {
	return UIColor.flatMaroonColorDark() 
}

func FlatMintDark() -> UIColor {
	return UIColor.flatMintColorDark() 
}

func FlatNavyBlueDark() -> UIColor {
	return UIColor.flatNavyBlueColorDark() 
}

func FlatOrangeDark() -> UIColor {
	return UIColor.flatOrangeColorDark() 
}

func FlatPinkDark() -> UIColor {
	return UIColor.flatPinkColorDark() 
}

func FlatPlumDark() -> UIColor {
	return UIColor.flatPlumColorDark() 
}

func FlatPowderBlueDark() -> UIColor {
	return UIColor.flatPowderBlueColorDark() 
}

func FlatPurpleDark() -> UIColor {
	return UIColor.flatPurpleColorDark() 
}

func FlatRedDark() -> UIColor {
	return UIColor.flatRedColorDark() 
}

func FlatSandDark() -> UIColor {
	return UIColor.flatSandColorDark() 
}

func FlatSkyBlueDark() -> UIColor {
	return UIColor.flatSkyBlueColorDark() 
}

func FlatTealDark() -> UIColor {
	return UIColor.flatTealColorDark() 
}

func FlatWatermelonDark() -> UIColor {
	return UIColor.flatWatermelonColorDark() 
}

func FlatWhiteDark() -> UIColor {
	return UIColor.flatWhiteColorDark() 
}

func FlatYellowDark() -> UIColor {
	return UIColor.flatYellowColorDark() 
}
