//
//  University+CoreDataProperties.swift
//  Universities
//
//  Created by Weiye Zhou on 14/5/21.
//
//

import Foundation
import CoreData


extension University {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<University> {
        return NSFetchRequest<University>(entityName: "University")
    }

    @NSManaged public var name: String?
    @NSManaged public var note: String?
    @NSManaged public var location: String?
    @NSManaged public var review: String?
    @NSManaged public var image: String?
    @NSManaged public var country: HigherEd?

}
