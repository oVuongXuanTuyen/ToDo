//
//  ListsPresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/9/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol ListsView: AnyObject {

}

protocol ListsPresenter {
    func configTableView(_ tableView: UITableView)
}

class ListsPresenterImplement: NSObject {

    weak var view: ListsView?
    var router: ListsRouter?

    init(view: ListsView?, router: ListsRouter?) {
        self.view = view
        self.router = router
    }
}

extension ListsPresenterImplement: ListsPresenter {

    func configTableView(_ tableView: UITableView) {
        tableView.regisNib(cell: ListsTableViewCell.self)
        tableView.dataSource = self
        tableView.delegate = self
    }
}
// MARK: - UITableview Datasource

extension ListsPresenterImplement: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let listsCell = tableView.dequeueReusableCell(ListsTableViewCell.self) as? ListsTableViewCell else {
            return UITableViewCell()
        }
        return listsCell
    }
}

// MARK: - UITableView Delegate

extension ListsPresenterImplement: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
