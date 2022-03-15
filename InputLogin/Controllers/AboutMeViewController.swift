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
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    
    var name = ""
    var surname = ""
    var city = ""
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(name) \(surname)"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "\(name) \(surname)", style: .plain, target: nil, action: nil)
        
        nameLabel.text = name
        surnameLabel.text = surname
        cityLabel.text = city
        hobbyLabel.text = hobby
    }

}
