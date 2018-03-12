//
//  ProfileRouter.swift
//  ToDo
//
//  Created by TuyenVX on 3/9/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol ProfileRouter {

}

class ProfileRouterImplement {

    weak var viewController: ProfileViewController?

    init(viewController: ProfileViewController) {

    }
}

extension ProfileRouterImplement: ProfileRouter {

}
