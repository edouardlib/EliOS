//
//  LoginPresenter.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation
import Dispatch
import RxSwift

class LoginPresenter {
    
    weak private var viewController : LoginProtocol?
    
    var disposeBag = DisposeBag()

    
    func attachView(view:LoginProtocol){
        viewController = view
    }
    
    func detachView() {
        viewController = nil
        
    }
    
    func loadData(){
        let accountLogin = AccountLogin()
        accountLogin.email = "eli@afelio.be"
        accountLogin.pwd = "Afelio12345?"
        accountLogin.loginType = "M"
        
        DataManager.instance.login(request:accountLogin)
            // Set 3 attempts to get response
            //.retry(3) ?? useful ??
            // Set 30 seconds timeout
            .timeout(30, scheduler: MainScheduler.instance)
            // Subscribe in background thread
            .subscribeOn(MainScheduler.instance)
            // Observe in main thread
            .observeOn(ConcurrentMainScheduler.instance)
            // Subscribe on observer
            .subscribe(
                onNext: { data in

            },
                onError: { error in
                    AppDelegate.log.error(error)
            },
                onCompleted: {
                    AppDelegate.log.info("Request successful")
            })
            .addDisposableTo(disposeBag) // Prevent leaks
    }
}
