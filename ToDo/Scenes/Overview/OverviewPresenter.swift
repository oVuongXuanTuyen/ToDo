//
//  OverviewPresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/7/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol OverviewView: AnyObject {

}

protocol OverviewPresenter {

}

class OverviewPresenterImplement {
    weak var view: OverviewView?
    var router: OverviewRouter?

    init(view: OverviewView?, router: OverviewRouter) {
        self.view = view
        self.router = router
    }
}

extension OverviewPresenterImplement: OverviewPresenter {

}
