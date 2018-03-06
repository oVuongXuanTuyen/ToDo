//
//  CalendarConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/7/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol CalendarConfigurator {
  func config(viewController: CalendarViewController)
}

class CalendarConfiguratorImplement {
  
}

extension CalendarConfiguratorImplement: CalendarConfigurator {
  func config(viewController: CalendarViewController) {
    let router = CalendarRouterImplement.init(viewController: viewController)
    let presenter = CalendarPresenterImplement.init(view: viewController, router: router)
    viewController.presenter = presenter
  }
}
