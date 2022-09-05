//
//  LoginData+CoreDataProperties.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//
//

import Foundation
import CoreData


extension LoginData : Codable {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LoginData> {
        return NSFetchRequest<LoginData>(entityName: "LoginData")
    }

    @NSManaged public var apiKey: String?
    @NSManaged public var authToken: String?
    @NSManaged public var cityOfPractice: String?
    @NSManaged public var clinicExist: Bool
    @NSManaged public var deviceId: String?
    @NSManaged public var dob: String?
    @NSManaged public var email: String?
    @NSManaged public var gender: String?
    @NSManaged public var id: Int32
    @NSManaged public var incompleteClinic: [String]?
    @NSManaged public var mobile: String?
    @NSManaged public var name: String?
    @NSManaged public var notificationToken: String?
    @NSManaged public var osType: String?
    @NSManaged public var passwordResetRequired: Bool
    @NSManaged public var permissions: [String]?
    @NSManaged public var preferredlanguages: [String]?
    @NSManaged public var profileComplete: Bool
    @NSManaged public var profileImage: String?
    @NSManaged public var resource: [String]?
    @NSManaged public var resourceId: Int32
    @NSManaged public var resourceType: String?
    @NSManaged public var rolename: String?
    @NSManaged public var signInCount: Int32
    @NSManaged public var termsAndConditions: Bool
    @NSManaged public var username: String?
    
    
    
    
    
    enum LoginDataCodingKeys: String, CodingKey {
        case id
        case username
        case email
        case profileImage = "profile_image"
        case resourceType = "resource_type"
        case resourceId = "resource_id"
        case termsAndConditions = "terms_and_conditions"
        case profileComplete = "profile_complete"
        case permissions
        case preferredlanguages = "preferred_languages"
        case passwordResetRequired = "password_reset_required"
        case name
        case rolename = "role_name"
        case notificationToken = "notification_token"
        case osType = "os_type"
        case signInCount = "sign_in_count"
        case authToken = "auth_token"
        case deviceId = "device_id"
        case apiKey = "api_key"
        case clinicExist = "clinic_exist"
        case incompleteClinic = "incomplete_clinic"
        case resource
        case cityOfPractice = "city_of_practice"
        case dob
        case gender
        case mobile
    }
    

}

extension LoginData : Identifiable {

}
