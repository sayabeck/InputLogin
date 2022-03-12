//
//  ResultViewController.swift
//  InputLogin
//
//  Created by mac mini on 3/12/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var welcomeText: String!
    var emojiText: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcomeText
        emojiLabel.text = emojiText
        
        let firstColor = UIColor(red: 170 / 255, green: 45 / 255, blue: 253 / 255, alpha: 1).cgColor
        let secondColor = UIColor(red: 34 / 255, green: 126 / 255, blue: 195 / 255, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [firstColor, secondColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
