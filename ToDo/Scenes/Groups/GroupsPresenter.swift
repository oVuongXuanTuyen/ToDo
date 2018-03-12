//
//  GroupsPresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/8/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol GroupsView: AnyObject {
    func reloadTableView()
}

protocol GroupsPresenter {
    func configTableView(_ tableView: UITableView)
}

class GroupsPresenterImplement: NSObject {
    weak var view: GroupsView?
    var router: GroupsRouter?

    init(view: GroupsView?, router: GroupsRouter?) {
        self.view = view
        self.router = router
    }
}

extension GroupsPresenterImplement: GroupsPresenter {
    func configTableView(_ tableView: UITableView) {
        tableView.regisNib(cell: GroupsTableViewCell.self)
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension GroupsPresenterImplement: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let groupsCell = tableView.dequeueReusableCell(GroupsTableViewCell.self) as? GroupsTableViewCell else {
            return UITableViewCell()
        }
        groupsCell.config(indexPath: indexPath)
        groupsCell.delegate = self
        return groupsCell
    }
}

extension GroupsPresenterImplement: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

extension GroupsPresenterImplement: GroupsTableViewCellDelegate {
    func didSelectedRowAtIndex(_ index: Int) {
        if index < 8 {
            router?.gotoListVC()
        }
    }
}
