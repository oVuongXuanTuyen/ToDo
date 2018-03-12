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
        self.moreNavigationController.navigationBar.isHidden = true
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
        let calendarConfigurator = CalendarConfiguratorImplement()
        calendarVC.configurator = calendarConfigurator
        // OverView VC
        guard let overviewNC = UIStoryboard.overview.instantiateInitialViewController() as? UINavigationController else {
            return
        }
        guard let overviewVC = overviewNC.topViewController as? OverviewViewController else {
            return
        }
        let overviewConfigurator = OverviewConfiguratorImplement()
        overviewVC.configurator = overviewConfigurator
        // Groups VC
        guard let groupsNC = UIStoryboard.groups.instantiateInitialViewController() as? UINavigationController else {
            return
        }
        guard let groupsVC = groupsNC.topViewController as? GroupsViewController else {
            return
        }
        let groupsConfigurator = GroupsConfiguratorImplement()
        groupsVC.configurator = groupsConfigurator
        // Lists VC
        guard let listsNC = UIStoryboard.lists.instantiateInitialViewController() as? UINavigationController else {
            return
        }
        guard let listsVC = listsNC.topViewController as? ListsViewController else {
            return
        }
        let listsConfigurator = ListsConfiguratorImplement()
        listsVC.configurator = listsConfigurator
        // Profile VC
        guard  let profileVC = ProfileViewController.loadFromStoryboard(UIStoryboard.account) as? ProfileViewController else {
            return
        }
        let profileConfigurator = ProfileConfiguratorImplement()
        profileVC.configurator = profileConfigurator
        //
        let viewControllers = [homeNC, calendarNC, overviewNC, groupsNC, listsNC, profileVC]
        setViewControllers(viewControllers, animated: false)
    }
}

extension MainTabbarController {

    var startVC: StartViewController? {
        return self.parent as? StartViewController
    }
}
