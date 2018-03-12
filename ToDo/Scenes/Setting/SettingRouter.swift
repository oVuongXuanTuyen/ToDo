//
//  SettingRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/12/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol SettingRouter {

}

class SettingRouterImplement {
    weak var viewController: SettingViewController?

    init(viewController: SettingViewController) {
        self.viewController = viewController
    }
}

extension SettingRouterImplement: SettingRouter {

}
