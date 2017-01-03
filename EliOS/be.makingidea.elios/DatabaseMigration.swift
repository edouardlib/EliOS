//
//  DatabaseMigration.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 03/01/17.
//  Copyright © 2017 Edouard Libion. All rights reserved.
//

import Foundation
import RealmSwift

class DatabaseMigration {
    
    static let DB_VERSION: Int = 1
    
    static let migrationBlock: MigrationBlock = { migration, oldSchemaVersion in
        if oldSchemaVersion < 1 {
            AppDelegate.log.info("Migration started...")
            /*migration.enumerateObjects(ofType: Person.className()) { oldObject, newObject in
                if oldSchemaVersion < 1 {
                    // combine name fields into a single field
                    let firstName = oldObject!["firstName"] as! String
                    let lastName = oldObject!["lastName"] as! String
                    newObject?["fullName"] = "\(firstName) \(lastName)"
                }
            }*/
        }

        AppDelegate.log.info("Migration done")
    }
}
