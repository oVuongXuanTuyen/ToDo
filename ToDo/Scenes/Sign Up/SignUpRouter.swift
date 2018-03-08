//
//  SignUpRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/1/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol SignUpRouter {
  func gotoSignInVC()
  func gotoHomeVC()
}

class SignUpRouterImplement {
  fileprivate weak var viewController: SignUpViewController?

  init(viewController: SignUpViewController) {
    self.viewController = viewController
  }
}

extension SignUpRouterImplement: SignUpRouter {
  func gotoSignInVC() {
    viewController?.dismiss(animated: true, completion: nil)
  }

  func gotoHomeVC() {
    guard let signInVC = viewController?.presentingViewController as? SignInViewController else { return }
    guard let startVC = signInVC.presentingViewController as? StartViewController else { return }
    startVC.dismiss(animated: true, completion: nil)
    startVC.showHome()
  }
}
