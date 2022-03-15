//
//  ViewController.swift
//  InputLogin
//
//  Created by mac mini on 3/12/22.
//

import UIKit

class MainViewController: UIViewController {


    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    let userData = UserData.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.returnKeyType = .next
        usernameTextField.delegate = self
        
        passwordTextField.delegate = self
        passwordTextField.returnKeyType = .done
        passwordTextField.enablesReturnKeyAutomatically = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        
        for viewController in tabBarController.viewControllers ?? [] {
            
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.nameText = userData.data.name
                welcomeVC.surnameText = userData.data.surname
                
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                aboutUserVC.name = userData.data.name
                aboutUserVC.surname = userData.data.surname
                aboutUserVC.age = userData.data.age
                aboutUserVC.city = userData.data.city
                aboutUserVC.hobby = userData.data.hobby
            }
        }
        
    }
    

    @IBAction func forgotPressed(_ sender: UIButton) {
        
        if sender.tag == 0 {
            showAlert(
                title: "Oops!",
                message: "Your username is \(userData.user) 😉"
            )} else {
            showAlert(
                title: "Oops!",
                message: "Your password is \(userData.password) 😉"
            )}
        
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if usernameTextField.text == userData.user && passwordTextField.text == userData.password {
            performSegue(withIdentifier: "goToResult", sender: nil)
        } else {
            showAlert(
                title: "Invalid login or password ",
                message: "Please, enter correct login and password",
                button: sender
            )}
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }

//MARK: - Private methods
    private func showAlert(title: String, message: String, button: UIButton? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if button == loginButton {
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            self.passwordTextField.text = ""
            }))
        } else {
                alert.addAction(UIAlertAction(title: "OK", style: .default))
            }
        
        present(alert, animated: true)
    }
        
}

//MARK: - UITextFieldDelegate
extension MainViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == passwordTextField {
            loginPressed(loginButton)
        } else {
            self.passwordTextField.becomeFirstResponder()
        }
        
        return true
    }
    
}

