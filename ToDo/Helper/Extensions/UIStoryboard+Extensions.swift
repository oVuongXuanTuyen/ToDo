//
//  UIStoryboardExt.swift
//  ToDo
//
//  Created by TuyenVX on 2/28/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

extension UIStoryboard {

    class var main: UIStoryboard {
        return UIStoryboard.init(name: "Main", bundle: nil)
    }
    class var account: UIStoryboard {
        return UIStoryboard.init(name: "Account", bundle: nil)
    }
    class var home: UIStoryboard {
        return UIStoryboard.init(name: "Home", bundle: nil)
    }
    class var calendar: UIStoryboard {
        return UIStoryboard.init(name: "Calendar", bundle: nil)
    }
    class var overview: UIStoryboard {
        return UIStoryboard.init(name: "Overview", bundle: nil)
    }
    class var groups: UIStoryboard {
        return UIStoryboard.init(name: "Groups", bundle: nil)
    }
    class var lists: UIStoryboard {
        return UIStoryboard.init(name: "Lists", bundle: nil)
    }
}
