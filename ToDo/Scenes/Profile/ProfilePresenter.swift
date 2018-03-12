//
//  ProfilePresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/9/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol ProfileView: AnyObject {

}

protocol ProfilePresenter {
    func configTableView(_ tableView: UITableView)
}

class ProfilePresenterImplement: NSObject {

    weak var view: ProfileView?
    var router: ProfileRouter?

    init(view: ProfileView?, router: ProfileRouter?) {
        self.view = view
        self.router = router
    }
}

extension ProfilePresenterImplement: ProfilePresenter {

    func configTableView(_ tableView: UITableView) {
        tableView.regisNib(cell: TaskTableViewCell.self)
        tableView.dataSource = self
    }
}

// MARK: - UITableView DataSource
extension ProfilePresenterImplement: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let taskCell = tableView.dequeueReusableCell(TaskTableViewCell.self) as? TaskTableViewCell else {
            return UITableViewCell()
        }
        return taskCell
    }
}
