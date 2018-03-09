//
//  UIColor+Extensions.swift
//  ToDo
//
//  Created by TuyenVX on 2/28/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit
import SwiftHEXColors

extension UIColor {

    class var completed: UIColor {
        return UIColor(hexString: "#50D2C2")!
    }
    class var snoozed: UIColor {
        return UIColor(hexString: "#FCAB53")!
    }
    class var overdue: UIColor {
        return UIColor(hexString: "#8C88FF")!
    }
    class var subTextColor: UIColor {
        return UIColor(hexString: "#BCBBBE")!
    }
    class var mainColor: UIColor {
        return UIColor.init(hexString: "#FD3366")!
    }
}
