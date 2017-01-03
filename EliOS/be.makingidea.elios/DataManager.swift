//
//  DataManager.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//
//  Singleton to handle data from viewcontroller to preferences, webservices and local database
//

import Foundation
import RxSwift

final class DataManager{
    
    
    var restService: RestService? = nil
    
    static let instance : DataManager = {
        let instance = DataManager()
        return instance
    }()
    
    private init() {
        
    }
    

    
    //
    // Webservice
    //
    
    func getList() -> String{
        return "Test"
    }
    
    
    func login(request: AccountLogin) -> Observable<WSResponse<NSObject>>{
        return  RestService.instance.postLogin(request: request)
    }
    
    //
    // Preferences
    //
    
    
    //
    // Local DB
    //
}
