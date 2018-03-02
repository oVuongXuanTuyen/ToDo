//
//  SignInRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/1/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol SignInRouter {
  func gotoSignUpVC()
  func gotoHomeVC()
}

class SignInRouterImplement {
  fileprivate var viewController: SignInViewController

  init(viewController: SignInViewController) {
    self.viewController = viewController
  }
}

extension SignInRouterImplement: SignInRouter {

  func gotoSignUpVC() {
    guard let signUpVC = SignUpViewController.loadFromStoryboard(.accout) as? SignUpViewController else { return }
    let configurator = SignUpConfiguratorImplement.init()
    signUpVC.configurator = configurator
    viewController.present(signUpVC, animated: true, completion: nil)
  }
  func gotoHomeVC() {
    guard let startVC = viewController.presentingViewController as? StartViewController else { return }
    viewController.dismiss(animated: true, completion: nil)
    startVC.showHome()
  }
}
