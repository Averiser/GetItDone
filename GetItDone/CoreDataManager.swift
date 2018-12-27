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
        
    func createToDo() {
        let context = persistentContainer.viewContext
        let toDo = NSEntityDescription.insertNewObject(forEntityName: "ToDo", into: context)
        
        let id = 1
        let title = "Let's do this"
        let status = false
        
        toDo.setValue(id, forKey: "id")
        toDo.setValue(title, forKey: "title")
        toDo.setValue(status, forKey: "status")
        
        do {
            try context.save()
        } catch let err {
            print("failed to save toDo into context:",err)
        }
    }
}
