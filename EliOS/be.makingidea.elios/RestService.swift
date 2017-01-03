//
//  RestService.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//
//  Singleton providing access to web API
//

import Foundation
import Alamofire
import RxSwift
import ObjectMapper
import AlamofireObjectMapper
import UIKit
import Reqres

class RestService {
    
    let BASE_URL = ""
    
    private var manager:SessionManager?
    
    static let instance: RestService = {
        let instance = RestService()
        let configuration = Reqres.defaultSessionConfiguration()
        //configuration.HTTPAdditionalHeaders = Manager.defaultHTTPHeaders
        instance.manager = Alamofire.SessionManager(configuration: configuration)
        return instance
    }()
    
    func buildRequest(routing:String!, httpMethod: String, jsonParameters:Any?, token: String?) -> URLRequest{
        let url = URL(string: BASE_URL.appending(routing))
        var urlRequest = URLRequest(url: url!)
        urlRequest.httpMethod = httpMethod
        
        if(jsonParameters != nil){
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: jsonParameters!, options: .prettyPrinted)
            } catch {
                // No-op
                AppDelegate.log.error("Serialization of body object failed")
            }
        }
        
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        //urlRequest.timeoutInterval = 10
        
        return urlRequest
    }

    
    //
    // API
    //
    
    func postLogin(request: AccountLogin) -> Observable<WSResponse<NSObject>>{
        return Observable<WSResponse<NSObject>>.create { (observer) -> Disposable in
            let requestReference = self.manager!.request(self.buildRequest(routing: "/account/login", httpMethod: "POST", jsonParameters: request.toJSON(), token: nil))
                .responseObject(completionHandler: { (response: DataResponse<WSResponse<NSObject>>) in
                    print(response.description)
                    if let value = response.result.value {
                        observer.onNext(value)
                        observer.onCompleted()
                    }else if let error = response.result.error {
                        observer.onError(error)
                    }
                })
            return Disposables.create(with: { requestReference.cancel() })
        }
    }
    
    

    
}
