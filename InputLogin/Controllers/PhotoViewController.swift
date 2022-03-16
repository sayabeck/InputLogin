//
//  PhotoViewController.swift
//  InputLogin
//
//  Created by mac mini on 3/13/22.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoView: UIImageView!
    
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoView.image = UIImage(named: image)
       
    }

}
