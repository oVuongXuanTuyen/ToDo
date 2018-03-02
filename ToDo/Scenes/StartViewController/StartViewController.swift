//
//  StartViewController.swift
//  ToDo
//
//  Created by TuyenVX on 2/28/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit
import SVProgressHUD

class StartViewController: UIViewController {
  @IBOutlet weak private var menuContainerView: UIView!
  @IBOutlet weak private var tabbarContainerView: UIView!

  // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
      menuContainerView.isHidden = true
      tabbarContainerView.isHidden = true
      SVProgressHUD.show()
      checkLogin()
    }

  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }

  // MARK: - Action

  func checkLogin() {
    if false {
      DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
       self.showHome()
      })
    } else {
      DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
        self.showLogin()
      })
    }
  }

  func showHome() {
    showTabbar()
    tabbarContainerView.isHidden = false
    menuContainerView.isHidden = false
    SVProgressHUD.dismiss()
  }

  func showTabbar() {
    UIView.animate(withDuration: 0.28) {
      self.menuContainerView.frame = CGRect.init(x: -UIScreen.width, y: 0, width: UIScreen.width, height: UIScreen.height)
      self.tabbarContainerView.frame = self.view.frame
    }
  }

  func showMenu() {
    UIView.animate(withDuration: 0.28) {
      self.menuContainerView.frame = self.view.frame
      self.tabbarContainerView.frame = CGRect.init(x: 0.75 * UIScreen.width, y: 0.25 * UIScreen.height, width: 0.25 * UIScreen.width, height: 0.5 * UIScreen.height)
    }
  }

  func showLogin() {
    guard let signInVC = UIStoryboard.accout.instantiateInitialViewController() as? SignInViewController else { return }
    let configurator = SignInConfiguratorImplement.init()
    signInVC.configurator = configurator
    present(signInVC, animated: false, completion: {
    SVProgressHUD.dismiss()
    })
  }

}
