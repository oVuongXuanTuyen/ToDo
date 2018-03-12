//
//  TimelineRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/12/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol TimelineRouter {

}

class TimelineRouterImplement {
    weak var viewController: TimelineViewController?

    init(viewController: TimelineViewController) {
        self.viewController = viewController
    }
}

extension TimelineRouterImplement: TimelineRouter {

}
