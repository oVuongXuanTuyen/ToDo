//
//  SignInViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/1/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
   var presenter: SignInPresenter?
   var configurator: SignInConfigurator?
  @IBOutlet weak private var usernameTextField: UITextField!
  @IBOutlet weak private var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator?.config(viewController: self)
    }

  // MARK: - IBAction
  @IBAction func signIn(_ sender: Any) {
    guard let username = usernameTextField.text, let password = passwordTextField.text else { return } // show error notifi
    if verifiInput() {
      presenter?.signIn(username, password)
    }
  }
  @IBAction func signUp(_ sender: Any) {
    presenter?.signUp()
  }
  @IBAction func forgotPassword(_ sender: Any) {
    presenter?.forgotPassword()
  }

  func verifiInput() -> Bool {
    return true
  }
}
extension SignInViewController: SignInView {

}
