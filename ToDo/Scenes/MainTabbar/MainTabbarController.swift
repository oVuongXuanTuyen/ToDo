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
        guard let homeNC = UIStoryboard.home.instantiateInitialViewController() as? UINavigationController else {
            return
        }
        guard let homeVC = homeNC.topViewController as? HomeViewController else {
            return
        }
        let homeConfigurator = HomeConfiguratorImplement.init()
        homeVC.configurator = homeConfigurator
        // Calendar VC
        guard let calendarNC = UIStoryboard.calendar.instantiateInitialViewController() as? UINavigationController else {
            return
        }
        guard let calendarVC = calendarNC.topViewController as? CalendarViewController else {
            return
        }
        let calendarConfigurator = CalendarConfiguratorImplement.init()
        calendarVC.configurator = calendarConfigurator
        // OverView VC
        guard let overviewNC = UIStoryboard.overview.instantiateInitialViewController() as? UINavigationController else {
            return
        }
        guard let overviewVC = overviewNC.topViewController as? OverviewViewController else {
            return
        }
        let overviewConfigurator = OverviewConfiguratorImplement.init()
        overviewVC.configurator = overviewConfigurator
        // Groups VC
        guard let groupsNC = UIStoryboard.groups.instantiateInitialViewController() as? UINavigationController else {
            return
        }
        guard let groupsVC = groupsNC.topViewController as? GroupsViewController else {
            return
        }
        let groupsConfigurator = GroupsConfiguratorImplement.init()
        groupsVC.configurator = groupsConfigurator
        // Profile VC
        guard  let profileVC = ProfileViewController.loadFromStoryboard(UIStoryboard.accout) as? ProfileViewController else {
            return
        }
        let profileConfigurator = ProfileConfiguratorImplement()
        profileVC.configurator = profileConfigurator
        //
        let viewControllers = [homeNC, calendarNC, overviewNC, groupsNC, profileVC]
        setViewControllers(viewControllers, animated: false)
    }
}

extension MainTabbarController {
    var startVC: StartViewController? {
        return self.parent as? StartViewController
    }
}
