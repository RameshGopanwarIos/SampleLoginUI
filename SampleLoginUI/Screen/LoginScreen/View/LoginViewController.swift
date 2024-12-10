//
//  LoginViewController.swift
//  SampleLoginUI
//
//  Created by Ramesh Gopanwar on 09/12/24.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!

    private var loginViewModel = LoginViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let isValidCreds = loginViewModel.validCredentials(email.text, password.text)
        showAlert(isValidCreds.rawValue)
        print(isValidCreds)
        
    }
    // Display alert when loginTapped
    func showAlert(_ message: String) {
        let alertController = UIAlertController(
            title: "Alert",
            message: message,
            preferredStyle: .alert
        )
        let ok = UIAlertAction(title: "Okay", style: .default)
        alertController.addAction(ok)
        present(alertController, animated: true)
    }
}
