//
//  CoreDataManager.swift
//  GetItDone
//
//  Created by MyMacBook on 27/12/2018.
//  Copyright © 2018 MyMacBook. All rights reserved.
//

import CoreData

struct CoreDataManager {
    static let shared = CoreDataManager()
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "GetItDone")
        container.loadPersistentStores {(storeDescription, err) in
            if let err = err {
                fatalError("loading of store failed: \(err)")
            }
            
        }
        return container
    }()
}
