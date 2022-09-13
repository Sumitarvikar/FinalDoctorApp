//
//  CDClinicDetail+CoreDataProperties.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//
//

import Foundation
import CoreData


extension CDClinicDetail {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDClinicDetail> {
        return NSFetchRequest<CDClinicDetail>(entityName: "CDClinicDetail")
    }
    
    @NSManaged public var id: Int32
    @NSManaged public var name: String?
    @NSManaged public var printHeaderHgt: Int32
    @NSManaged public var printFooterHgt: Int32
    @NSManaged public var landline: String?
    @NSManaged public var isComplete: Bool
    @NSManaged public var enableOnSearch: Bool
    @NSManaged public var email: String?
    @NSManaged public var mobile: String?
    @NSManaged public var shareDrugsAcrossClinic: Bool
    @NSManaged public var allowThirdPartyAccess: Bool
    @NSManaged public var blockConfirmedApt: Bool
    @NSManaged public var sharePrescriptionAcrossClinic: Bool
    @NSManaged public var blockConfirmedAptMinutes: Int32
    @NSManaged public var shareMedicalHistoryAcrossClinic: Bool
    @NSManaged public var isActive: Bool
    
}

extension CDClinicDetail : Identifiable {
    
}
