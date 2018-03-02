//
//  BaseViewController.swift
//  ToDo
//
//  Created by TuyenVX on 2/28/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit
import SVProgressHUD
import CoreGraphics

class BaseViewController: UIViewController {
  private var imageView: UIImageView = UIImageView.init(frame: CGRect.zero)

    override func viewDidLoad() {
      super.viewDidLoad()
      setDefaults()
    }
  // MARK: - Defaults
  func setDefaults() {
    setMenuItem()
    initImageView()
  }

  func setMenuItem() {
    let menuButton = UIButton.init(frame: CGRect.init(x: 15, y: 30, width: 30, height: 30))
    menuButton.setImage(#imageLiteral(resourceName: "ic_menu"), for: .normal)
    menuButton.addTarget(self, action: #selector(showMenu), for: .touchUpInside)
    self.view.addSubview(menuButton)
  }

  func setRightButton(icon: UIImage) {
    let rightButton = UIButton.init(frame: CGRect.init(x: UIScreen.width - 30 - 15, y: 30, width: 30, height: 30))
    rightButton.setImage(icon, for: .normal)
    rightButton.addTarget(self, action: #selector(rightButtonDidSelected), for: .touchUpInside)
    self.view.addSubview(rightButton)
  }
  func initImageView() {
    imageView.frame = view.frame
    view.addSubview(imageView)
    imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    imageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    imageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFit
    imageView.isUserInteractionEnabled = true
//    imageView.backgroundColor = .red
//    imageView.borderColor = .blue
//    imageView.borderWidth = 2
    imageView.isHidden = true
  }

  // MARK: - Action

  @objc func rightButtonDidSelected() {
    
  }
  @objc func showMenu() {
    guard let startVC = mainTabbarVC?.parent as? StartViewController else { return }
    self.takeScreenShot()
    startVC.showMenu()
  }

  func hideMenu() {
    imageView.isHidden = true
  }

  func takeScreenShot() {
    UIGraphicsBeginImageContext(view.frame.size)
    guard let context = UIGraphicsGetCurrentContext() else {
      return
    }
    view.layer.render(in: context)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    imageView.image = image
    imageView.isHidden = false

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
    return self.tabBarController as? MainTabbarController
  }
}
