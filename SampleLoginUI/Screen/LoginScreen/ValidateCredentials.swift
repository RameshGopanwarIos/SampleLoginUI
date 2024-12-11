//
//  ValidateCredentials.swift
//  SampleLoginUI
//
//  Created by Ramesh Gopanwar on 11/12/24.
//

import Foundation

final class ValidateCredentials {
    
    //check validation for user
    func validCredentials(_ email: String?, _ password: String?) -> validationType {
        guard let email, !email.isEmpty else {
            return .emailEmpty
        }
        guard let password, !password.isEmpty else {
            return .passwordEmpty
        }
        guard email.contains("@gmail.com") else {
            return .emailFormat
        }
        guard password.count > 8 else {
            return .passwordLength
        }
        return .loginSuccess
        
    }
}
