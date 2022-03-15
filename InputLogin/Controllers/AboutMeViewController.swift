//
//  AboutMeViewController.swift
//  InputLogin
//
//  Created by mac mini on 3/13/22.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    
    var name = ""
    var surname = ""
    var age = 0
    var city = ""
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "\(name) \(surname)", style: .plain, target: nil, action: nil)
        
        view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
       
        nameLabel.text = name
        surnameLabel.text = surname
        ageLabel.text = String(age)
        cityLabel.text = city
        hobbyLabel.text = hobby
    }

}
