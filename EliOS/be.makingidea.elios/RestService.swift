//
//  RestService.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift

class RestService {
    
    
    let ENDPOINT = "http://google.com"
    

    func postLogin() -> Observable<WSResponse>{
        
        var rp = Alamofire.request(ENDPOINT).responseJSON(completionHandler: {
            
        })
        
        return nil
    }
    
}
