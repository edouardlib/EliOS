//
//  LoginPresenter.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation


class LoginPresenter {
    
    weak private var viewController : LoginProtocol?
    
    // TODO: add datamanager binding
    
    func attachView(view:LoginProtocol){
        viewController = view
    }
    
    func detachView() {
        viewController = nil
    }
    
    func loadData(){
        viewController?.loginSuccess()
    }
}
