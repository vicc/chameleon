//
//  SecondViewController.swift
//  ChameleonDemo
//
//  Created by Wei Huang on 5/5/17.
//  Copyright © 2017 Wei Huang. All rights reserved.
//
//  - Attribution: image #1 - vecteezy.com
//  - Attribution: image #1 - 500px.com

import UIKit
import  Chameleon

class SecondViewController: UITableViewController {
    @IBOutlet weak var sampleOneImageView: UIImageView!
    
    @IBOutlet weak var sampleOneAverageColorLabel: UILabel!

    @IBOutlet weak var sampleOneComponentColorOneLabel: UILabel!
    
    @IBOutlet weak var sampleOneComponentColorTwoLabel: UILabel!
    
    @IBOutlet weak var sampleOneComponentColorThreeLabel: UILabel!
    
    @IBOutlet weak var sampleOneComponentColorFourLabel: UILabel!
    
    @IBOutlet weak var sampleOneComponentColorFiveLabel: UILabel!

    @IBOutlet weak var sampleTwoImageView: UIImageView!

    @IBOutlet weak var sampleTwoAverageColorLabel: UILabel!
    
    @IBOutlet weak var sampleTwoComponentColorOneLabel: UILabel!
    
    @IBOutlet weak var sampleTwoComponentColorTwoLabel: UILabel!
    
    @IBOutlet weak var sampleTwoComponentColorThreeLabel: UILabel!
    
    @IBOutlet weak var sampleTwoComponentColorFourLabel: UILabel!
    
    @IBOutlet weak var sampleTwoComponentColorFiveLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: tabBarController?.tabBar.tintColor ?? UIColor.gray]
        navigationController?.navigationBar.barTintColor = tabBarController?.tabBar.barTintColor ?? UIColor.lightGray
        sampleOneImageView.image = #imageLiteral(resourceName: "SampleImageOne")
        sampleTwoImageView.image = #imageLiteral(resourceName: "SampleImageTwo")
        sampleOneImageView.layer.masksToBounds = true
        sampleTwoImageView.layer.masksToBounds = true
        sampleOneImageView.layer.cornerRadius = 8
        sampleTwoImageView.layer.cornerRadius = 8
        initChameleon()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: tabBarController?.tabBar.tintColor ?? UIColor.gray]
        navigationController?.navigationBar.barTintColor = tabBarController?.tabBar.barTintColor ?? UIColor.lightGray
    }
    
    // Chameleon related
    func initChameleon() {
        let sampleOneImageColors = ColorsFromImage(#imageLiteral(resourceName: "SampleImageOne"), withFlatScheme: true)
        print(sampleOneImageColors.count)
        let sampleTwoImageColors = ColorsFromImage(#imageLiteral(resourceName: "SampleImageTwo"), withFlatScheme: true)
        print(sampleTwoImageColors.count)
        let sampleOneImageAverageColor = AverageColorFromImage(#imageLiteral(resourceName: "SampleImageOne"))
        let sampleTwoImageAverageColor = AverageColorFromImage(#imageLiteral(resourceName: "SampleImageTwo"))
        
        sampleOneAverageColorLabel.text = "Aa \u{25A0}"
        sampleOneAverageColorLabel.textColor = sampleOneImageAverageColor
        
        sampleTwoAverageColorLabel.text = "Aa \u{25A0}"
        sampleTwoAverageColorLabel.textColor = sampleTwoImageAverageColor
        
        sampleOneComponentColorOneLabel.text = "\u{25A0}"
        sampleOneComponentColorOneLabel.textColor = sampleOneImageColors[0]
        sampleOneComponentColorTwoLabel.text = "\u{25A0}"
        sampleOneComponentColorTwoLabel.textColor = sampleOneImageColors[1]
        sampleOneComponentColorThreeLabel.text = "\u{25A0}"
         sampleOneComponentColorThreeLabel.textColor = sampleOneImageColors[2]
        sampleOneComponentColorFourLabel.text = "\u{25A0}"
        sampleOneComponentColorFourLabel.textColor = sampleOneImageColors[3]
        sampleOneComponentColorFiveLabel.text = "\u{25A0}"
        sampleOneComponentColorFiveLabel.textColor = sampleOneImageColors[4]
        
        sampleTwoComponentColorOneLabel.text = "\u{25A0}"
        sampleTwoComponentColorOneLabel.textColor = sampleOneImageColors[0]
        sampleTwoComponentColorTwoLabel.text = "\u{25A0}"
        sampleTwoComponentColorTwoLabel.textColor = sampleOneImageColors[1]
        sampleTwoComponentColorThreeLabel.text = "\u{25A0}"
        sampleTwoComponentColorThreeLabel.textColor = sampleOneImageColors[2]
        sampleTwoComponentColorFourLabel.text = "\u{25A0}"
        sampleTwoComponentColorFourLabel.textColor = sampleOneImageColors[3]
        sampleTwoComponentColorFiveLabel.text = "\u{25A0}"
        sampleTwoComponentColorFiveLabel.textColor = sampleOneImageColors[4]
    }
}

