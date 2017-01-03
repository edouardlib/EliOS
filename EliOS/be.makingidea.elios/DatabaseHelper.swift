//
//  DatabaseHelper.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation
import RealmSwift

class DatabaseHelper {
    
    var databaseHelper: DatabaseHelper? = nil
    
    static let instance : DatabaseHelper = {
        let instance = DatabaseHelper()
        return instance
    }()
    
    private init() {
        
    }

    
    func setLabels(labels: WSResponse<AnyObject>){
        
    }
    
    func setLov(lov: WSResponse<AnyObject>){
        
    }
    
}
