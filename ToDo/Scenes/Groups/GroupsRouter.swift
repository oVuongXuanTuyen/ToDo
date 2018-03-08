//
//  GroupsRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/8/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol GroupsRouter {
    
}

class GroupsRouterImplement {
    fileprivate weak var viewController: GroupsViewController?
    
    init(viewController: GroupsViewController?) {
        self.viewController = viewController
    }
}

extension GroupsRouterImplement: GroupsRouter {
    
}
