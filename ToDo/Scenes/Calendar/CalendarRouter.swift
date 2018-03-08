//
//  CalendarRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/7/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol CalendarRouter {

}

class CalendarRouterImplement {
  weak var viewController: CalendarViewController?

  init(viewController: CalendarViewController?) {
    self.viewController = viewController
  }
}

extension CalendarRouterImplement: CalendarRouter {
  
}
