//
//  Student+CoreDataProperties.swift
//  Universities
//
//  Created by Weiye Zhou on 13/5/21.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var studentID: String?
    @NSManaged public var university: University?

}

extension Student : Identifiable {

}
