//
//  OverviewConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/7/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol OverviewConfigurator {
    func config(viewController: OverviewViewController)
}

class OverviewConfiguratorImplement {

}

extension OverviewConfiguratorImplement: OverviewConfigurator {
    func config(viewController: OverviewViewController) {
        let router = OverviewRouterImplement.init(viewController: viewController)
        let presenter = OverviewPresenterImplement.init(view: viewController, router: router)
        viewController.presenter = presenter
    }
}
