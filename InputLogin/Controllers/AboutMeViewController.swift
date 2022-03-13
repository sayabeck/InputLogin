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
        
        nameLabel.text = "name: \(name)"
        surnameLabel.text = "surname: \(surname)"
        cityLabel.text = "city: \(city)"
        hobbyLabel.text = "my hobby: \(hobby)"
    }

}
