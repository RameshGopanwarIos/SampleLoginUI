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
        let isValidCreds = loginViewModel.validateLogin(email.text, password.text)
        self.showAlert(isValidCreds.rawValue)
        //print(isValidCreds)
    }
    
}
