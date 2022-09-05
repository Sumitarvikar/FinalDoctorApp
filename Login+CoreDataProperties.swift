//
//  Login+CoreDataProperties.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//
//

import Foundation
import CoreData


extension Login {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Login> {
        return NSFetchRequest<Login>(entityName: "Login")
    }

    @NSManaged public var data: NSObject?

}

extension Login : Identifiable {

}
