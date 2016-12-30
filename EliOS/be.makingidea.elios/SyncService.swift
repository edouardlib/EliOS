//
//  SyncService.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation


class SyncService: NSObject{
    
    
    static var instance: SyncService!
    var mTimer: Timer!
    
    static func getInstance () -> SyncService{
        if(instance == nil){
            self.instance = SyncService()
        }
        return instance
    }
    
    
    func startSyncService(){
        DispatchQueue.main.asynchronously(execute: { () -> Void in
            mTimer = Timer.scheduledTimerWithTimeInterval(1000, target: self, selector:#selector(SyncService.updateData), userInfo: nil, repeats: true)
        })
    }
    
    func updateData(){
        if(true == true){ // TODO: test data connection
            // TODO: refresh token
        }
    }
    
    
}
