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
}

class SignUpRouterImplement {
  fileprivate var viewController: SignUpViewController

  init(viewController: SignUpViewController) {
    self.viewController = viewController
  }
}

extension SignUpRouterImplement: SignUpRouter {
  func gotoSignInVC() {
    viewController.dismiss(animated: true, completion: nil)
  }
}
