//
//  SignInPresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/1/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol SignInView: AnyObject {

}

protocol SignInPresenter {
    func signIn(_ username: String, _ password: String)
    func signUp()
    func forgotPassword()
}

class SignInPresenterImplement {
    fileprivate var router: SignInRouter?
    fileprivate weak var view: SignInView?

    init(router: SignInRouter?, view: SignInView?) {
        self.router = router
        self.view = view
    }
}

extension SignInPresenterImplement: SignInPresenter {

    func signIn(_ username: String, _ password: String) {
        router?.gotoHomeVC()
    }

    func signUp() {
        router?.gotoSignUpVC()
    }

    func forgotPassword() {
        //
    }

}
