//
//  CreateTaskPresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/6/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol CreateTaskView: AnyObject {
    //
}

protocol CreateTaskPresenter {
    //
}

class CreateTaskPresenterImplement {
    private weak var view: CreateTaskView?
    private var router: CreateTaskRouter?

    init(view: CreateTaskView?, router: CreateTaskRouter?) {
        self.view = view
        self.router = router
    }
}

extension CreateTaskPresenterImplement: CreateTaskPresenter {
}
