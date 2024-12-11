//
//  LoginViewModel.swift
//  SampleLoginUI
//
//  Created by Ramesh Gopanwar on 09/12/24.
//
import Foundation

// declared outside final class, so that it can be accessed by any file
enum validationType: String {
    case emailEmpty = "Email can not be empty"
    case passwordEmpty = "Password can not be empty"
    case loginSuccess = "Login Succes"
    case passwordLength = "Password should be more than 8 characters"
    case emailFormat = "Email should be XXXX@gmail.com format"
}

final class LoginViewModel {
    
    private let validateCreds = ValidateCredentials()
    
    func validateLogin(_ email: String?, _ password: String?) -> validationType {
        validateCreds.validCredentials(email, password)
    }
}
