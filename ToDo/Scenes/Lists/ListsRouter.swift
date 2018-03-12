//
//  ListsRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/9/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol ListsRouter {

}

class ListsRouterImplement {

    weak var viewController: ListsViewController?

    init(viewController: ListsViewController?) {
        self.viewController = viewController
    }
}

extension ListsRouterImplement: ListsRouter {

}
