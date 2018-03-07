//
//  CalendarPresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/7/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol CalendarView: AnyObject {
  func reloadData()
}

protocol CalendarPresenter {
  func configTableView(_ tableView: UITableView)
}

class CalendarPresenterImplement: NSObject {
  weak var view: CalendarView?
  var router: CalendarRouter?

  init(view: CalendarView?, router: CalendarRouter?) {
    self.view = view
    self.router = router
  }
}

extension CalendarPresenterImplement: CalendarPresenter {
  func configTableView(_ tableView: UITableView) {
    tableView.dataSource = self
    tableView.regisNib(cell: TaskTableViewCell.self)
  }
}

extension CalendarPresenterImplement: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 8
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let taskCell = tableView.dequeueReusableCell(TaskTableViewCell.self) else { return UITableViewCell() }
    return taskCell
  }
}
