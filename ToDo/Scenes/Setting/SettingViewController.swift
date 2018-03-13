//
//  SettingViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/12/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class SettingViewController: BaseViewController {

    var presenter: SettingPresenter?
    var configurator: SettingConfigurator?
    @IBOutlet weak private var tableView: UITableView!
    @IBOutlet weak private var leadingConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator?.config(viewController: self)
        presenter?.config(tableView: tableView)
        setRightButton(icon: #imageLiteral(resourceName: "ic_option"))
        setMenuTitle("Settings")
    }
    // MARK: - IBAction
    @IBAction func generalSetting(_ sender: UIButton) {
        changeLeadingLayout(button: sender)
    }

    @IBAction func socialSetting(_ sender: UIButton) {
        changeLeadingLayout(button: sender)
    }

    @IBAction func alertsSetting(_ sender: UIButton) {
        changeLeadingLayout(button: sender)
    }
    // MARK: - Action
    func changeLeadingLayout(button: UIButton) {
        UIView.animate(withDuration: 0.28) {
            self.leadingConstraint.constant = 25 + CGFloat(button.tag) * (UIScreen.width/3)
            self.view.layoutIfNeeded()
        }
    }
}

extension SettingViewController: SettingView {

}
