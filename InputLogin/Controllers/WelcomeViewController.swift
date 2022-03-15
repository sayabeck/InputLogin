//
//  ResultViewController.swift
//  InputLogin
//
//  Created by mac mini on 3/12/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var nameText = ""
    var surnameText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(nameText)!"
        
        let firstColor = UIColor(red: 253 / 255, green: 142 / 255, blue: 45 / 255, alpha: 1).cgColor
        let secondColor = UIColor(red: 34 / 255, green: 181 / 255, blue: 195 / 255, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [firstColor, secondColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

