//
//  SettingPresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/12/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol SettingView: AnyObject {

}

protocol SettingPresenter {
    func config(tableView: UITableView)
}

class SettingPresenterImplement: NSObject {
    weak var view: SettingView?
    var router: SettingRouter?

    init(view: SettingView?, router: SettingRouter?) {
        self.view = view
        self.router = router
    }
}

extension SettingPresenterImplement: SettingPresenter {
    func config(tableView: UITableView) {
        tableView.regisNib(cell: SettingTableViewCell.self)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - UITableView Delegate + Datasource

extension SettingPresenterImplement: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

extension SettingPresenterImplement: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let settingCell = tableView.dequeueReusableCell(SettingTableViewCell.self) as? SettingTableViewCell else {
            return UITableViewCell()
        }
        return settingCell
    }
}
