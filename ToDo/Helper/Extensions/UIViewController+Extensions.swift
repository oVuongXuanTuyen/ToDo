//
//  UIViewController+Extensions.swift
//  ToDo
//
//  Created by TuyenVX on 2/28/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

extension UIViewController {
  class func loadFromStoryboard(_ storyboard: UIStoryboard) -> UIViewController {
    return storyboard.instantiateViewController(withIdentifier: String(describing: self))
  }
}
