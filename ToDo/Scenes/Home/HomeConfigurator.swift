//
//  HomeConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/2/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation
protocol HomeConfigurator {
  func config(viewController: HomeViewController)
}

class HomeConfiguratorImplement {

}

extension HomeConfiguratorImplement: HomeConfigurator {
  func config(viewController: HomeViewController) {
    let router = HomeRouterImplement.init(viewController: viewController)
    let presenter = HomePresenterImplement.init(view: viewController, router: router)
    viewController.presneter = presenter
  }
}
