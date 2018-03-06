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
    // Home VC
    guard let homeNC = UIStoryboard.home.instantiateInitialViewController() as? UINavigationController else { return }
    guard let homeVC = homeNC.topViewController as? HomeViewController else { return }
    let homeConfigurator = HomeConfiguratorImplement.init()
    homeVC.configurator = homeConfigurator
    // Calendar VC
    guard let calendarNC = UIStoryboard.calendar.instantiateInitialViewController() as? UINavigationController else { return }
    guard let calendarVC = calendarNC.topViewController as? CalendarViewController else { return }
    let calendarConfigurator = CalendarConfiguratorImplement.init()
    calendarVC.configurator = calendarConfigurator
    //
    let viewControllers = [homeNC, calendarNC]
    setViewControllers(viewControllers, animated: false)
  }
}

extension MainTabbarController {
  var startVC: StartViewController? {
    return self.parent as? StartViewController
  }
}
