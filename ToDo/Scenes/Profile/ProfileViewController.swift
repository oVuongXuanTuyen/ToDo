//
//  ProfileViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/9/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController {

    var presenter: ProfilePresenter?
    var configurator: ProfileConfigurator?
    @IBOutlet weak private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator?.config(viewController: self)
        presenter?.configTableView(tableView)
        createRightButton()
    }

    func createRightButton() {
        setRightButton(icon: #imageLiteral(resourceName: "ic_share"))
    }
}

extension ProfileViewController: ProfileView {

}
