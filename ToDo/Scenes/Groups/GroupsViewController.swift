//
//  GroupsViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/8/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class GroupsViewController: BaseViewController {

    var presenter: GroupsPresenter?
    var configurator: GroupsConfigurator?
    @IBOutlet weak private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator?.config(viewController: self)
        presenter?.configTableView(tableView)
        setRightButton(icon: #imageLiteral(resourceName: "ic_search"))
        setMenuTitle("Groups")
    }
    // MARK: - Init
}
extension GroupsViewController: GroupsView {

    func reloadTableView() {
        tableView.reloadData()
    }
}
