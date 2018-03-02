//
//  UITableView+Extension.swift
//  ToDo
//
//  Created by TuyenVX on 3/2/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

extension UITableView {
  func regisNib(cell: UITableViewCell.Type) {
    let reuseID = String(describing: cell)
    self.register(UINib.init(nibName: reuseID, bundle: nil), forCellReuseIdentifier: reuseID)
  }

  func dequeueReusableCell(_ cell: UITableViewCell.Type) -> UITableViewCell? {
    return self.dequeueReusableCell(withIdentifier: String(describing: cell))
  }
}
