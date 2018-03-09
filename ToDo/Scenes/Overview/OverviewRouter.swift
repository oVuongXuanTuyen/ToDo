//
//  OverviewRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/7/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol OverviewRouter {

}

class OverviewRouterImplement {
    weak var viewController: OverviewViewController?

    init(viewController: OverviewViewController) {
        self.viewController = viewController
    }
}

extension OverviewRouterImplement: OverviewRouter {

}
