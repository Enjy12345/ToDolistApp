//
//  CoreDataManager.swift
//  ToDolistApp
//
//  Created by enjykhaled on 15/02/2022.
//

import Foundation
import CoreData

class CoreDataManager {
    let presistentContainer : NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    private init(){
        presistentContainer = NSPersistentContainer(name: "ToDoModel")
        presistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to intialize Core Data \(error)")
            }
        }
    }
}
