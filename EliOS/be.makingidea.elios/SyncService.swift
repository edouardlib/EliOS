//
//  SyncService.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//
//  Background service to run background tasks wrapped in a singleton
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
    
    private override init() { }
    
    func startSyncService(){
        DispatchQueue.main.async(execute: { () -> Void in
            self.mTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector:#selector(SyncService.updateData), userInfo: nil, repeats: true)
        })
    }
    
    func updateData(){
        AppDelegate.log.info("SyncService triggered.")
    }
}
