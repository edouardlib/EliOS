//
//  WSResponse.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation
import ObjectMapper

class WSResponse<D : AnyObject> : Mappable {
    
    var id: Int?
    var success: Bool?
    var successMessage: String?
    var data: D?
    var additionalData: String?
    var warnMessage: String?
    var errorMessage: String?
    
    
    
    // Mapping business
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        id <- map["Id"]
        success <- map["Success"]
        successMessage <- map["SucessMessage"]
        //data <- map["Data"]
    }
}
