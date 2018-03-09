//
//  GroupsConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/8/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol GroupsConfigurator {
    func config(viewController: GroupsViewController)
}

class GroupsConfiguratorImplement {

}

extension GroupsConfiguratorImplement: GroupsConfigurator {
    func config(viewController: GroupsViewController) {
        let router = GroupsRouterImplement.init(viewController: viewController)
        let presenter = GroupsPresenterImplement.init(view: viewController, router: router)
        viewController.presenter = presenter
    }
}
