//
//  University+ViewModel.swift
//  Universities
//
//  Created by Weiye Zhou on 13/5/21.
//

import Foundation
import CoreData

extension University {
    //Non-optional ViewModel name property
    var nameString: String{
        get { name ?? "" }
        set { name = newValue }
    }
    
    var imageString: String{
        get { image ?? "" }
        set { image = newValue }
    }
    
    var locationString: String{
        get { location ?? "" }
        set { location = newValue }
    }
    
    var noteString: String{
        get { note ?? "" }
        set { note = newValue }
    }
    
    var reviewString: String{
        get { review ?? "" }
        set { review = newValue }
    }
    

    // ViewModel computed property that returns universities as Array

    
    var viewContext: NSManagedObjectContext{
        managedObjectContext ?? NSManagedObjectContext(concurrencyType:NSManagedObjectContextConcurrencyType.mainQueueConcurrencyType)
    }
    


}

