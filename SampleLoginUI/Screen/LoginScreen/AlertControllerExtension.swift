//
//  AlertControllerExtension.swift
//  SampleLoginUI
//
//  Created by Ramesh Gopanwar on 11/12/24.
//

import Foundation
import UIKit

extension UIViewController {
    
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
