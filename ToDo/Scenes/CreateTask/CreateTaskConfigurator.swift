//
//  CreateTaskConfigurator.swift
//  ToDo
//
//  Created by TuyenVX on 3/6/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol CreateTaskConfigurator {
  func config(viewController: CreateTaskViewController)
}

class CreateTaskConfiguratorImplement {
  
}

extension CreateTaskConfiguratorImplement: CreateTaskConfigurator {
  func config(viewController: CreateTaskViewController) {
    let router = CreateTaskRouterImplement.init(viewController: viewController)
    let presenter = CreateTaskPresenterImplement.init(view: viewController, router: router)
    viewController.presenter = presenter
  }
}
