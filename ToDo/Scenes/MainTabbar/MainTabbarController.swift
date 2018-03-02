//
//  MainTabbarController.swift
//  ToDo
//
//  Created by TuyenVX on 2/28/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController {
    override func viewDidLoad() {
      super.viewDidLoad()
      setDefaults()
  }

    func setDefaults() {
      self.tabBar.isHidden = true
    }
}
