//
//  CreateTaskRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/6/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol CreateTaskRouter {
  
}

class CreateTaskRouterImplement {
  weak var viewController: CreateTaskViewController?

  init(viewController: CreateTaskViewController) {
    self.viewController = viewController
  }
}

extension CreateTaskRouterImplement: CreateTaskRouter {
  
}
