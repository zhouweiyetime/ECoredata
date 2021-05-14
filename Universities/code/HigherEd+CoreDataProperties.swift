//
//  HigherEd+CoreDataProperties.swift
//  Universities
//
//  Created by Weiye Zhou on 14/5/21.
//
//

import Foundation
import CoreData


extension HigherEd {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HigherEd> {
        return NSFetchRequest<HigherEd>(entityName: "HigherEd")
    }

    @NSManaged public var name: String?
    @NSManaged public var title: String?
    @NSManaged public var universities: NSOrderedSet?

}

// MARK: Generated accessors for universities
extension HigherEd {

    @objc(insertObject:inUniversitiesAtIndex:)
    @NSManaged public func insertIntoUniversities(_ value: University, at idx: Int)

    @objc(removeObjectFromUniversitiesAtIndex:)
    @NSManaged public func removeFromUniversities(at idx: Int)

    @objc(insertUniversities:atIndexes:)
    @NSManaged public func insertIntoUniversities(_ values: [University], at indexes: NSIndexSet)

    @objc(removeUniversitiesAtIndexes:)
    @NSManaged public func removeFromUniversities(at indexes: NSIndexSet)

    @objc(replaceObjectInUniversitiesAtIndex:withObject:)
    @NSManaged public func replaceUniversities(at idx: Int, with value: University)

    @objc(replaceUniversitiesAtIndexes:withUniversities:)
    @NSManaged public func replaceUniversities(at indexes: NSIndexSet, with values: [University])

    @objc(addUniversitiesObject:)
    @NSManaged public func addToUniversities(_ value: University)

    @objc(removeUniversitiesObject:)
    @NSManaged public func removeFromUniversities(_ value: University)

    @objc(addUniversities:)
    @NSManaged public func addToUniversities(_ values: NSOrderedSet)

    @objc(removeUniversities:)
    @NSManaged public func removeFromUniversities(_ values: NSOrderedSet)

}
