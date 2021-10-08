//
//  AlertHelper.swift
//  Biometric auth
//
//  Created by Giri on 08/10/21.
//

import Foundation
import UIKit
extension UIViewController {
    func alert(title: String, message: String, okActionTitle: String) {
        let alertView = UIAlertController(title: title,
                                          message: message,
                                          preferredStyle: .alert)
        let okAction = UIAlertAction(title: okActionTitle, style: .default)
        alertView.addAction(okAction)
        present(alertView, animated: true)
    }
}
