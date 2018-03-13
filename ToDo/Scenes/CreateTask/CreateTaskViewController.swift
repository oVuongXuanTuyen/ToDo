//
//  CreateTaskViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/2/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class CreateTaskViewController: BaseViewController {
    var presenter: CreateTaskPresenter?
    var configurator: CreateTaskConfigurator?

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator?.config(viewController: self)
        setRightButton(icon: #imageLiteral(resourceName: "ic_option"))
        setMenuTitle("Create New")
    }
}

extension CreateTaskViewController: CreateTaskView {
}
