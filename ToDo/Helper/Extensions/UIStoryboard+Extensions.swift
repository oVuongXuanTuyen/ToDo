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
        return UIStoryboard(name: "Main", bundle: nil)
    }
    class var account: UIStoryboard {
        return UIStoryboard(name: "Account", bundle: nil)
    }
    class var home: UIStoryboard {
        return UIStoryboard(name: "Home", bundle: nil)
    }
    class var calendar: UIStoryboard {
        return UIStoryboard(name: "Calendar", bundle: nil)
    }
    class var overview: UIStoryboard {
        return UIStoryboard(name: "Overview", bundle: nil)
    }
    class var groups: UIStoryboard {
        return UIStoryboard(name: "Groups", bundle: nil)
    }
    class var lists: UIStoryboard {
        return UIStoryboard(name: "Lists", bundle: nil)
    }
    class var timeline: UIStoryboard {
        return UIStoryboard(name: "Timeline", bundle: nil)
    }
}
