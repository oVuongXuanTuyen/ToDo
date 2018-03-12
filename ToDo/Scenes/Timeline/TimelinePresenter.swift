//
//  TimelinePresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/12/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol TimelineView: AnyObject {

}

protocol TimelinePresenter {
    func config(tableView: UITableView)
}

class TimelinePresenterImplement: NSObject {

    weak var view: TimelineView?
    var router: TimelineRouter?

    init(view: TimelineView?, router: TimelineRouter?) {
        self.view = view
        self.router = router
    }
}

extension TimelinePresenterImplement: TimelinePresenter {

    func config(tableView: UITableView) {
        tableView.bounces = false
        tableView.regisNib(cell: TimelineTableViewCell.self)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: UITableViewDelegate + UITableViewDatasource

extension TimelinePresenterImplement: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let timelineCell = tableView.dequeueReusableCell(TimelineTableViewCell.self) as? TimelineTableViewCell else {
            return UITableViewCell()
        }
        return timelineCell
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            let headerView = getHeaderView(title: "TUESDAY, APRIL 7")
            return headerView
        default:
            let headerView = getHeaderView(title: "WEDNESDAY, APRIL 8")
            return headerView
        }
    }

    func getHeaderView(title: String) -> UIView {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.width, height: 50))
        headerView.backgroundColor = .white
        let lineView = UIView(frame: CGRect(x: 20, y: 0, width: 0.5, height: 50))
        lineView.backgroundColor = .subTextColor
        let titleLabel = UILabel(frame: CGRect(x: 20.25, y: 0, width: headerView.frame.width - 40.5, height: 50))
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 15)
        titleLabel.textColor = .lightGray
        titleLabel.text = title
        headerView.addSubview(titleLabel)
        headerView.addSubview(lineView)
        return headerView
    }
}

extension TimelinePresenterImplement: UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
