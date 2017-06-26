//
//  FirstViewController.swift
//  ChameleonDemo
//
//  Created by Wei Huang on 5/5/17.
//  Copyright © 2017 Wei Huang. All rights reserved.
//

import UIKit
import  Chameleon

class FirstViewController: UITableViewController {
    
    @IBOutlet weak var randomFlatColorLabel: UILabel!
    
    @IBOutlet weak var complementaryFlatColorLabel: UILabel!
    
    @IBOutlet weak var contrastFlatColorLabel: UILabel!
    
    @IBOutlet weak var flatteningNonFlatColorLabel: UILabel!
    
    @IBOutlet weak var beforeFlatteningColorLabel: UILabel!
    
    @IBOutlet weak var lighterColorLabel: UILabel!
    
    @IBOutlet weak var darkerColorLabel: UILabel!

    @IBOutlet weak var gradientColorLabel: UILabel!
    
    @IBOutlet weak var gradientComponentColorOneLabel: UILabel!
    
    @IBOutlet weak var gradientComponentColorTwoLabel: UILabel!
    
    @IBOutlet weak var gradientComponentColorThreeLabel: UILabel!
    
    @IBOutlet weak var gradientWithContrastLabel: UILabel!
    
    @IBOutlet weak var refreshButton: UIBarButtonItem!
    
    // MARK: Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initChameleonColors()
        
        // Hide nav bar hairline
        self.navigationController?.hidesNavigationBarHairline = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        initChameleonColors()
    }
    
    
    // MARK: Chameleon related
    func initChameleonColors() {
        
        let randomFlatColor = UIColor.randomFlat
        let randomFlatColorContract = ContrastColorOf(randomFlatColor, returnFlat: true)
        // Nav bar
        navigationController?.navigationBar.barTintColor = randomFlatColor
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor.rawValue: randomFlatColorContract]
        // Tab bar
        tabBarController?.tabBar.barTintColor = randomFlatColor
        tabBarController?.tabBar.tintColor = randomFlatColorContract
        // Refresh button
        refreshButton.tintColor = randomFlatColorContract
        // Random flat color
        randomFlatColorLabel.text = "Aa \u{25A0}"
        randomFlatColorLabel.textColor = randomFlatColor
        // Complementary flat color
        complementaryFlatColorLabel.text = "Aa \u{25A0}"
        complementaryFlatColorLabel.textColor = ComplementaryFlatColorOf(randomFlatColor)
        // Contrast flat color
        contrastFlatColorLabel.text = "Aa \u{25A0}"
        contrastFlatColorLabel.textColor = ContrastColorOf(randomFlatColor, returnFlat: true)
        // Flattening non-flat color
        let randomColor = generateRandomColor() // custom method, not part of Chameleon
        flatteningNonFlatColorLabel.text = "Aa \u{25A0}"
        flatteningNonFlatColorLabel.textColor = randomColor.flatten()
        beforeFlatteningColorLabel.text = "Aa \u{25A0}"
        beforeFlatteningColorLabel.textColor = randomColor
        // Lighter color > not yet reliable
        lighterColorLabel.text = "Aa \u{25A0}"
        lighterColorLabel.textColor = randomFlatColor.lighten(byPercentage: 0.5)
        // Darker color > not yet reliable
        darkerColorLabel.text = "Aa \u{25A0}"
        darkerColorLabel.textColor = randomFlatColor.darken(byPercentage: 0.5)
        // Gradient color
        let firstRandomColor = UIColor.randomFlat
        let secondRandomColor = UIColor.randomFlat
        let thirdRandomColor = UIColor.randomFlat
        let gradientColor = GradientColor(.leftToRight, frame: gradientColorLabel.frame, colors: [firstRandomColor, secondRandomColor, thirdRandomColor])
        let gradientColorLargeFrame = GradientColor(.leftToRight, frame: gradientWithContrastLabel.frame, colors: [firstRandomColor, secondRandomColor, thirdRandomColor])
        gradientColorLabel.text = "Aa \u{25A0}"
        gradientColorLabel.textColor = gradientColor
        // Gradient backgorund with contrast text
        gradientComponentColorOneLabel.text = "\u{25A0}"
        gradientComponentColorOneLabel.textColor = firstRandomColor
        gradientComponentColorTwoLabel.text = "\u{25A0}"
        gradientComponentColorTwoLabel.textColor = secondRandomColor
        gradientComponentColorThreeLabel.text = "\u{25A0}"
        gradientComponentColorThreeLabel.textColor = thirdRandomColor
        gradientWithContrastLabel.text = "FANCY COLOR"
        gradientWithContrastLabel.textColor = ContrastColorOf(gradientColorLargeFrame, returnFlat: true)
        gradientWithContrastLabel.backgroundColor = gradientColorLargeFrame
        gradientWithContrastLabel.layer.masksToBounds = true
        gradientWithContrastLabel.layer.cornerRadius = 8
    }
    
    // Refresh colors
    @IBAction func refreshButtonAction(_ sender: Any) {
        initChameleonColors()
    }
    
    // Generate a random color
    func generateRandomColor() -> UIColor {
        let red = Float(arc4random_uniform(256))/255.0
        let green = Float(arc4random_uniform(256))/255.0
        let blue = Float(arc4random_uniform(256))/255.0
        
        return UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: 1.0)
    }
}


