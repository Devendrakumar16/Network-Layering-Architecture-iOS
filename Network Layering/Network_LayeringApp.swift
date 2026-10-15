//
//  Network_LayeringApp.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

import SwiftUI
import CoreData

@main
struct Network_LayeringApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            PostScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
