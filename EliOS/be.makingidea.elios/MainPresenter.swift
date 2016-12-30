//
//  MainPresenter.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 29/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation


class MainPresenter {
    
    weak private var viewController : MainProtocol?
    
    // TODO: add datamanager binding
    
    func attachView(view:MainProtocol){
        viewController = view
    }
    
    func detachView() {
        viewController = nil
    }
    
    func loadData(){
        viewController?.loadSuccess()
    }
}
