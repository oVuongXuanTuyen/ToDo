//
//  HomeViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/2/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    var presneter: HomePresenter?
    var configurator: HomeConfigurator?
    @IBOutlet weak private var avartarImageView: UIImageView!
    @IBOutlet weak private var totalTaskLabel: UILabel!
    @IBOutlet weak private var timeLabel: UILabel!
    @IBOutlet weak private var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createRightButton()
        configurator?.config(viewController: self)
        presneter?.config(tableView: tableView)
    }
    // MARK: - Init
    func createRightButton() {
        setRightButton(icon: #imageLiteral(resourceName: "ic_search"))
    }
    // MARK: - Action
    override func rightButtonDidSelected() {
        print("DID SELECTED")
    }
    @IBAction func createTask(_ sender: Any) {
        presneter?.createTask()
    }
}

extension HomeViewController: HomeView {

}
