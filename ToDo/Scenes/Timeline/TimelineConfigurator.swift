//
//  TimelineConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/12/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol TimelineConfigurator {
    func config(viewController: TimelineViewController)
}

class TimelineConfiguratorImplement {

}

extension TimelineConfiguratorImplement: TimelineConfigurator {

    func config(viewController: TimelineViewController) {
        let rouer = TimelineRouterImplement.init(viewController: viewController)
        let presenter = TimelinePresenterImplement.init(view: viewController, router: rouer)
        viewController.presenter = presenter
    }
}
