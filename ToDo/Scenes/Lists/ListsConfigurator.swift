//
//  ListsConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/9/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol ListsConfigurator {
    func config(viewController: ListsViewController)
}

class ListsConfiguratorImplement {

}

extension ListsConfiguratorImplement: ListsConfigurator {

    func config(viewController: ListsViewController) {
        let router = ListsRouterImplement(viewController: viewController)
        let presenter = ListsPresenterImplement(view: viewController, router: router)
        viewController.presenter = presenter
    }
}
