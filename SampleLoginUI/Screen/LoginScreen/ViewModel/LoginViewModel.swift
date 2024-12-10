//
//  LoginViewModel.swift
//  SampleLoginUI
//
//  Created by Ramesh Gopanwar on 09/12/24.
//

import Foundation

final class LoginViewModel {
    enum validationType: String {
        case emailEmpty = "Email can not be empty"
        case passwordEmpty = "Password can not be empty"
        case loginSuccess = "Login Succes"
    }
    
    //check validation for user
    func validCredentials(_ email: String?, _ password: String?) -> validationType {
        guard let email, !email.isEmpty else {
            return .emailEmpty
        }
        guard let password, !password.isEmpty else {
            return .passwordEmpty
        }
        return .loginSuccess
        
    }
}
