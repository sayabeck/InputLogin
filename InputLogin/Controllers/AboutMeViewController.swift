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
    
    
    var user: UserData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.data.fullName
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: user.data.fullName, style: .plain, target: nil, action: nil)
        
        view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
       
        nameLabel.text = user.data.name
        surnameLabel.text = user.data.surname
        ageLabel.text = String(user.data.age)
        cityLabel.text = user.data.city
        hobbyLabel.text = user.data.hobby
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photoVC = segue.destination as? PhotoViewController else { return }
        photoVC.image = user.data.image
        
    }

}
