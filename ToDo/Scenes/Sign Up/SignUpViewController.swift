//
//  SignUpViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/1/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    var presenter: SignUpPresenter?
    var configurator: SignUpConfigurator?
    @IBOutlet weak private var nameTextField: UITextField!
    @IBOutlet weak private var emailTextField: UITextField!
    @IBOutlet weak private var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator?.config(viewController: self)
    }
    
    // MARK: - UIAction
    @IBAction func signUp(_ sender: Any) {
        guard let name = nameTextField.text, let email = emailTextField.text, let password = passwordTextField.text else {
            return
        }
        if validate() {
            presenter?.signUp(name, email, password)
        }
    }
    @IBAction func signIn(_ sender: Any) {
        presenter?.signIn()
    }
    @IBAction func termsAndCondition(_ sender: Any) {
        presenter?.showTermsAndCodition()
    }
    
    func validate() -> Bool {
        return true
    }
    
}

extension SignUpViewController: SignUpView {  
}
