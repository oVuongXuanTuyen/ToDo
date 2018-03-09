//
//  HomeRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/2/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol HomeRouter {
    func gotoCreateTaskVC()
}
class HomeRouterImplement {
    weak var viewController: HomeViewController?

    init(viewController: HomeViewController) {
        self.viewController = viewController
    }
}

extension HomeRouterImplement: HomeRouter {
    func gotoCreateTaskVC() {
        let createTaskVC = CreateTaskViewController.loadFromStoryboard(.home)
        viewController?.navigationController?.pushViewController(createTaskVC, animated: true)
    }
}
