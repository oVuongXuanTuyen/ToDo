//
//  SignUpConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/1/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol SignUpConfigurator {
    func config(viewController: SignUpViewController)
}

class SignUpConfiguratorImplement {

}

extension SignUpConfiguratorImplement: SignUpConfigurator {
    func config(viewController: SignUpViewController) {
        let router = SignUpRouterImplement.init(viewController: viewController)
        let presenter = SignUpPresenterImplement.init(view: viewController, router: router)
        viewController.presenter = presenter
    }
}
