//
//  MainTabbarController.swift
//  ToDo
//
//  Created by TuyenVX on 2/28/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController {
  override func awakeFromNib() {
    setVC()
  }
    override func viewDidLoad() {
      super.viewDidLoad()
      setDefaults()
  }

    func setDefaults() {
      self.tabBar.isHidden = true
    }
  func setVC() {
    guard let navigationController = UIStoryboard.home.instantiateInitialViewController() as? UINavigationController else { return }
    guard let homeVC = navigationController.topViewController as? HomeViewController else { return }
    let configurator = HomeConfiguratorImplement.init()
    homeVC.configurator = configurator
    let viewControllers = [navigationController]
    setViewControllers(viewControllers, animated: false)
  }
}

extension MainTabbarController {
  var startVC: StartViewController? {
    return self.parent as? StartViewController
  }
}
