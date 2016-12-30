//
//  PrefrenceHelper.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation

class PreferenceHelper{
    
    let defaults = UserDefaults.standard
    
    let PREF_WTK = "PREF_WTK"
    let PREF_FIRSTNAME = "PREF_FIRSTNAME"
    let PREF_LASTNAME = "PREF_LASTNAME"
    let PREF_VALIDITY = "PREF_VALIDITY"
    
    func clear(){

    }

    func putWTK(token:String){
        defaults.set(token, forKey: PREF_WTK)
    }
    
    func getWtk() -> String {
        return defaults.string(forKey: PREF_WTK)!
    }
    
    func getTokenValidity() -> Int{
        return defaults.integer(forKey: PREF_VALIDITY)
    }

}
