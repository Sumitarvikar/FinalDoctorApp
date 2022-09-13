//
//  CDAppoinmentDetails+CoreDataProperties.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 13/09/22.
//
//

import Foundation
import CoreData


extension CDAppoinmentDetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDAppoinmentDetails> {
        return NSFetchRequest<CDAppoinmentDetails>(entityName: "CDAppoinmentDetails")
    }

    @NSManaged public var id: Int32
    @NSManaged public var clinicID: Int32
    @NSManaged public var doctorID: Int32
    @NSManaged public var name: String?
    @NSManaged public var gender: String?
    @NSManaged public var age: String?
    @NSManaged public var mobile: String?
    @NSManaged public var date: String?
    @NSManaged public var weight: Int32

}

extension CDAppoinmentDetails : Identifiable {

}
