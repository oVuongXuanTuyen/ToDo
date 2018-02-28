//
//  BaseViewController.swift
//  ToDo
//
//  Created by TuyenVX on 2/28/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit
import SVProgressHUD

class BaseViewController: UIViewController {

    override func viewDidLoad() {
      setDefaults()
    }
  // MARK:- Defaults
  func setDefaults() {
    setMenuItem()
  }
  func setMenuItem() {
    let menuButton = UIButton.init(frame: CGRect.init(x: 15, y: 30, width: 30, height: 30))
    menuButton.backgroundColor = .red
    menuButton.addTarget(self, action: #selector(showMenu), for: .touchUpInside)
    self.view.addSubview(menuButton)
  }
  // MARK:-
  @objc func showMenu() {
    guard let startVC = mainTabbarVC?.parent as? StartViewController else { return }
    startVC.showMenu()
  }
  func showHUD() {
    SVProgressHUD.show()
  }

  func hideHUD() {
    SVProgressHUD.dismiss()
  }
}
extension BaseViewController {
  var mainTabbarVC: MainTabbarController? {
    return self.parent as? MainTabbarController
  }
}
