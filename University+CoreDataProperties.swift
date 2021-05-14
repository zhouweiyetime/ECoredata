//
//  University+CoreDataProperties.swift
//  Universities
//
//  Created by Weiye Zhou on 13/5/21.
//
//

import Foundation
import CoreData


extension University {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<University> {
        return NSFetchRequest<University>(entityName: "University")
    }

    @NSManaged public var name: String?
    @NSManaged public var students: NSOrderedSet?
    @NSManaged public var country: HigherEd?

}

// MARK: Generated accessors for students
extension University {

    @objc(insertObject:inStudentsAtIndex:)
    @NSManaged public func insertIntoStudents(_ value: Student, at idx: Int)

    @objc(removeObjectFromStudentsAtIndex:)
    @NSManaged public func removeFromStudents(at idx: Int)

    @objc(insertStudents:atIndexes:)
    @NSManaged public func insertIntoStudents(_ values: [Student], at indexes: NSIndexSet)

    @objc(removeStudentsAtIndexes:)
    @NSManaged public func removeFromStudents(at indexes: NSIndexSet)

    @objc(replaceObjectInStudentsAtIndex:withObject:)
    @NSManaged public func replaceStudents(at idx: Int, with value: Student)

    @objc(replaceStudentsAtIndexes:withStudents:)
    @NSManaged public func replaceStudents(at indexes: NSIndexSet, with values: [Student])

    @objc(addStudentsObject:)
    @NSManaged public func addToStudents(_ value: Student)

    @objc(removeStudentsObject:)
    @NSManaged public func removeFromStudents(_ value: Student)

    @objc(addStudents:)
    @NSManaged public func addToStudents(_ values: NSOrderedSet)

    @objc(removeStudents:)
    @NSManaged public func removeFromStudents(_ values: NSOrderedSet)

}

extension University : Identifiable {

}
