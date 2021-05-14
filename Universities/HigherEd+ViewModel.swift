//
//  HigherEd+ViewModel.swift
//  Universities
//
//  Created by Weiye Zhou on 14/5/21.
//

import Foundation
import SwiftUI
import CoreData

extension HigherEd {
    // ViewModel computed property that returns universities as Array
    var universitiesArray: [University] {
        get { universities?.array as? [University] ?? [] }
        set { universities = NSOrderedSet(array: newValue) }
    }
    
    var titleString: String{
        get { title ?? "" }
        set { title = newValue }
    }
    

    
    var nameString: String{
        get { name ?? "" }
        set { name = newValue }
    }
    
    var viewContext: NSManagedObjectContext{
        managedObjectContext ?? NSManagedObjectContext(concurrencyType:NSManagedObjectContextConcurrencyType.mainQueueConcurrencyType)
    }
    
    func addItem() {
            let newUniversity = University(context: viewContext)
            newUniversity.name = " "
            addToUniversities(newUniversity)
//           newUniversity.country = self //same as above

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
    }
    
     func deleteItems(offsets: IndexSet) {
            offsets.map { universitiesArray[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
    }
    
}
