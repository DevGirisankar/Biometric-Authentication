//
//  ViewController.swift
//  Biometric auth
//
//  Created by Giri on 08/10/21.
//

import UIKit

class ViewController: UIViewController {
    private let biometricAuth = BiometricAuth()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func verifyDidTap(_ sender: UIButton) {
        biometricAuth.canEvaluate { (canEvaluate, _, canEvaluateError) in
            guard canEvaluate else {
                alert(title: "Error",
                      message: canEvaluateError?.localizedDescription ?? "Face ID/Touch ID may not be configured",
                      okActionTitle: "Ok")
                return
            }
            biometricAuth.evaluate { [weak self] (success, error) in
                guard success else {
                    self?.alert(title: "Error",
                                message: error?.localizedDescription ?? "Face ID/Touch ID may not be configured",
                                okActionTitle: "Ok")
                    return
                }
                self?.alert(title: "Success",
                            message: "You are in now!!!",
                            okActionTitle: "Ok")
            }
        }
    }
}

