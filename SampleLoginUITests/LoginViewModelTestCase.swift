//
//  LoginViewModelTestCase.swift
//  SampleLoginUITests
//
//  Created by Ramesh Gopanwar on 11/12/24.
//

import XCTest

@testable import SampleLoginUI

final class LoginViewModelTestCase: XCTestCase {
    
    var viewModel: LoginViewModel?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // This is for initializing all things
        viewModel = LoginViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        // This is for making all things nil. removes from memory
        viewModel = nil
    }
    
    func testInvalidCreds() {
        guard let viewModel else {
            XCTFail("viewModel is nil")
            return
        }
        // empty email
        let emptyEmailType = viewModel.validateLogin("", "xxxx")
        XCTAssertEqual(emptyEmailType, .emailEmpty, "Email should be empty")
        XCTAssertEqual(emptyEmailType.rawValue, "Email can not be empty")
        
        // empty password
        let emptyPassword = viewModel.validateLogin("mymail@gmail.com", "")
        XCTAssertEqual(emptyPassword, .passwordEmpty, "Password should be empty")
        XCTAssertTrue(emptyPassword == .passwordEmpty, "Password should be empty")
        
        //email format
        let emailFormat = viewModel.validateLogin("mymail@gml.co", "324324534534")
        XCTAssertEqual(emailFormat, .emailFormat, "Email should contain suffix - @gmail.com")
        
//        XCTAssertFalse(<#T##expression: Bool##Bool#>, <#T##message: String##String#>)
//        XCTAssertNotNil(<#T##expression: Any?##Any?#>, <#T##message: String##String#>)
//        XCTAssert(<#T##expression: Bool##Bool#>) // by default true
        
        
        // password length
        let passwordLength = viewModel.validateLogin("mymail@gmail.com", "6767")
        XCTAssertEqual(passwordLength, .passwordLength, "Password length should be more than 8 chars")
        
        let validCreds = viewModel.validateLogin("myMail@gmail.com", "3434534534534")
        XCTAssertEqual(validCreds, .loginSuccess)
        
        
        
    }
    
    
    

}
