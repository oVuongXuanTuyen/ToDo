//
//  ProfileConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/9/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol ProfileConfigurator {
    func config(viewController: ProfileViewController)
}

class ProfileConfiguratorImplement {

}

extension ProfileConfiguratorImplement: ProfileConfigurator {

    func config(viewController: ProfileViewController) {
        let router = ProfileRouterImplement(viewController: viewController)
        let presenter = ProfilePresenterImplement(view: viewController, router: router)
        viewController.presenter = presenter
    }
}
