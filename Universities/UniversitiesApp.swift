//
//  UniversitiesApp.swift
//  Universities
//
//  Created by Weiye Zhou on 13/5/21.
//

import SwiftUI

@main
struct UniversitiesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
