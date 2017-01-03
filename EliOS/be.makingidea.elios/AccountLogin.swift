//
//  AccountLogin.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 02/01/17.
//  Copyright © 2017 Edouard Libion. All rights reserved.
//

import Foundation
import ObjectMapper

class AccountLogin: Mappable{
    
    var loginType: String?
    var email: String?
    var pwd: String?
    
    
    init() {

    }
    
    convenience required init?(map:Map){
        // Example: check if a required "name" property exists within the JSON.
        //if map.JSONDictionary["email"] == nil {
        //    return nils
        //}
        
        self.init()
    }
    
    func mapping(map:Map){
        loginType <- map["loginType"]
        email <- map["email"]
        pwd <- map["pwd"]
    }
    
}
