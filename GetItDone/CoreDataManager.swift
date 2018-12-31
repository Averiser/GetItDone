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
        
    func createToDo(id: Double, title: String, status: Bool) {
        let context = persistentContainer.viewContext
        let toDo = NSEntityDescription.insertNewObject(forEntityName: "ToDo", into: context)
        
        toDo.setValue(id, forKey: "id")
        toDo.setValue(title, forKey: "title")
        toDo.setValue(status, forKey: "status")
        
        do {
            try context.save()
        } catch let err {
            print("failed to save context with new toDo:",err)
        }
    }
    
    func deleteToDo(id: Double) {
        let context = persistentContainer.viewContext
        
//        fetch todos
        let fetchRequest = NSFetchRequest<ToDo>(entityName: "ToDo")
        
//        go through todos and find matching id
//        delete todo with matching id
        do {
            let toDos = try context.fetch(fetchRequest)
            toDos.forEach { (fetchedToDo) in
                if fetchedToDo.id == id {
                    context.delete(fetchedToDo)
                }
            }
        } catch let err {
            print("failed to fetch or delete todo from context",err)
            
        }
    }
    
    func fetchToDos() -> [ToDo] {
        let context = persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<ToDo>(entityName: "ToDo")
        
        do {
           let toDos = try context.fetch(fetchRequest)
            return toDos
        } catch let err {
            print("failed fetch todos from context",err)
            return []
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
