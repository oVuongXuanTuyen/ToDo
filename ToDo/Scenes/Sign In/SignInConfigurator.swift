//
//  SignInConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/1/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol SignInConfigurator {
  func config(viewController: SignInViewController)
}

class SignInConfiguratorImplement {

}

extension SignInConfiguratorImplement: SignInConfigurator {
  func config(viewController: SignInViewController) {
    let router = SignInRouterImplement.init(viewController: viewController)
    let presenter = SignInPresenterImplement.init(router: router, view: viewController)
    viewController.presenter = presenter
  }
}
