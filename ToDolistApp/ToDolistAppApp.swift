//
//  ToDolistAppApp.swift
//  ToDolistApp
//
//  Created by enjykhaled on 15/02/2022.
//

import SwiftUI

@main
struct ToDolistAppApp: App {
    //MARK: - Properties
    let presistentContainer = CoreDataManager.shared.presistentContainer
    //MARK: - Body
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, presistentContainer.viewContext)
        }
    }
}
