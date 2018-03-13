//
//  TimelineViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/12/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class TimelineViewController: BaseViewController {
    var presenter: TimelinePresenter?
    var configurator: TimelineConfigurator?
    @IBOutlet weak private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator?.config(viewController: self)
        presenter?.config(tableView: tableView)
        setRightButton(icon: #imageLiteral(resourceName: "ic_option"))
        setMenuTitle("Timeline")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension TimelineViewController: TimelineView {

}
