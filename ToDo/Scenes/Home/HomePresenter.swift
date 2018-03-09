//
//  HomePresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/2/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation
import UIKit

protocol HomeView: AnyObject {

}

protocol HomePresenter {
    func config(tableView: UITableView)
    func createTask()
}

class HomePresenterImplement: NSObject {
    fileprivate weak var view: HomeView?
    fileprivate var router: HomeRouter?

    init(view: HomeView?, router: HomeRouter?) {
        self.view = view
        self.router = router
    }
}

extension HomePresenterImplement: HomePresenter {
    func config(tableView: UITableView) {
        tableView.dataSource = self
        tableView.regisNib(cell: TaskTableViewCell.self)
    }

    func createTask() {
        router?.gotoCreateTaskVC()
    }
}

extension HomePresenterImplement: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let taskCell = tableView.dequeueReusableCell(TaskTableViewCell.self) else { return UITableViewCell() }
        return taskCell
    }
}
