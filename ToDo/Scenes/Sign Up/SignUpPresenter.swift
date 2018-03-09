//
//  SignUpPresenter.swift
//  ToDo
//
//  Created by TuyenVX on 3/1/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import Foundation

protocol SignUpView: AnyObject {

}

protocol SignUpPresenter {
    func signUp(_ name: String, _ email: String, _ password: String)
    func signIn()
    func showTermsAndCodition()
}

class SignUpPresenterImplement {
    fileprivate weak var view: SignUpView?
    fileprivate var router: SignUpRouter?

    init(view: SignUpView?, router: SignUpRouter?) {
        self.view = view
        self.router = router
    }
}

extension SignUpPresenterImplement: SignUpPresenter {

    func signUp(_ name: String, _ email: String, _ password: String) {
        router?.gotoHomeVC()
    }

    func signIn() {
        router?.gotoSignInVC()
    }

    func showTermsAndCodition() {
        //
    }
}
