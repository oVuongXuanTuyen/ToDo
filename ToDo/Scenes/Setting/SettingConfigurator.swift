//
//  SettingConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/12/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol SettingConfigurator {
    func config(viewController: SettingViewController)
}

class SettingConfiguratorImplement {

}

extension SettingConfiguratorImplement: SettingConfigurator {

    func config(viewController: SettingViewController) {
        let router = SettingRouterImplement(viewController: viewController)
        let presenter = SettingPresenterImplement(view: viewController, router: router)
        viewController.presenter = presenter
    }
}
