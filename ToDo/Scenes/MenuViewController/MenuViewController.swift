//
//  MenuViewController.swift
//  ToDo
//
//  Created by TuyenVX on 2/28/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

protocol MenuViewControllerDelegate: AnyObject {
    func close()
}

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func close(_ sender: Any) {
        guard let startVC = self.parent as? StartViewController else {
            return
        }
        startVC.delegate?.close()
        startVC.showTabbar()
    }
    @IBAction func logout(_ sender: Any) {
        guard let startVC = self.parent as? StartViewController else {
            return
        }
        startVC.showLogin()
    }
    @IBAction func setting(_ sender: Any) {
        guard let startVC = self.parent as? StartViewController else {
            return
        }
        startVC.mainTabbarController?.selectedIndex = 7
        startVC.delegate?.close()
        startVC.showTabbar()
    }
    @IBAction func changeMenu(_ sender: UIButton) {
        guard let startVC = self.parent as? StartViewController else {
            return
        }
        startVC.mainTabbarController?.selectedIndex = sender.tag
        startVC.delegate?.close()
        startVC.showTabbar()
    }
}

