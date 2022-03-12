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
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.returnKeyType = .next
        usernameTextField.delegate = self
        
        passwordTextField.delegate = self
        passwordTextField.returnKeyType = .done
        passwordTextField.enablesReturnKeyAutomatically = true
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            guard let resultVC = segue.destination as? ResultViewController else { return }
            resultVC.welcomeText = "Welcome, \(usernameTextField.text ?? "Anonymous")!"
            resultVC.emojiText = "👋"
        }
    }
    

    @IBAction func forgotPressed(_ sender: UIButton) {
        
        if sender == forgotUsernameButton {
            showAlert(
                title: "Oops!",
                message: "Your username is User 😉",
                button: sender
            )} else {
            showAlert(
                title: "Oops!",
                message: "Your password is Password 😉",
                button: sender
            )}
        
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if usernameTextField.text == "User" && passwordTextField.text == "Password" {
            performSegue(withIdentifier: "goToResult", sender: self)
        } else {
            showAlert(
                title: "Invalid login or password ",
                message: "Please, enter correct login and password",
                button: sender
            )}
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
            guard let _ = segue.source as? ResultViewController else { return }
            usernameTextField.text = ""
            passwordTextField.text = ""
    }

//MARK: - Private methods
    private func showAlert(title: String, message: String, button: UIButton) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if button == loginButton {
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            self.usernameTextField.text = self.usernameTextField.text
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == passwordTextField {
            loginPressed(loginButton)
            return true
        } else {
            self.passwordTextField.becomeFirstResponder()
            return true
        }
    }
    
}

