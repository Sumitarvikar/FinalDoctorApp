//
//  LoginData.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 05/09/22.
//

import Foundation
import Foundation

// MARK: - Welcome
struct LoginResponse : Codable {
    let message: String?
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let id: Int?
    let username, mobile, email, gender: String?
    let dob: String?
   // let profileImage: JSONNull?
    let resourceType: String?
    let resourceID: Int?
    let termsAndConditions, profileComplete: Bool?
  //  let permissions: [JSONAny]?
  //  let preferredLanguages: [String]?
    let passwordResetRequired, isPolyclinicAdmin: Bool?
    let name, roleName: String?
  //  let impersonates: [Impersonate]?
    let notificationToken, osType: String?
    let signInCount: Int?
    let authToken, deviceID, apiKey, encodedAuthToken: String?
    let clinicExist: Bool?
  //  let incompleteClinic: IncompleteClinic?
    let cityOfPractice: String?
  //  let smsCreditLevel: JSONNull?
    let whatsappCredits: Int?
    let specializationID: [Int]?
  //  let resource: Resource?
   // let clinicDetails: ClinicDetails?
    let ownerID: Int?
    let statsPortalURL: String?
 //   let statsPortalUsers: [String]?

    enum CodingKeys: String, CodingKey {
        case id, username, mobile, email, gender, dob
      //  case profileImage = "profile_image"
        case resourceType = "resource_type"
        case resourceID = "resource_id"
        case termsAndConditions = "terms_and_conditions"
        case profileComplete = "profile_complete"
      //  case permissions
      //  case preferredLanguages = "preferred_languages"
        case passwordResetRequired = "password_reset_required"
        case isPolyclinicAdmin = "is_polyclinic_admin"
        case name
        case roleName = "role_name"
       // case impersonates
        case notificationToken = "notification_token"
        case osType = "os_type"
        case signInCount = "sign_in_count"
        case authToken = "auth_token"
        case deviceID = "device_id"
        case apiKey = "api_key"
        case encodedAuthToken = "encoded_auth_token"
        case clinicExist = "clinic_exist"
      //  case incompleteClinic = "incomplete_clinic"
        case cityOfPractice = "city_of_practice"
       // case smsCreditLevel = "sms_credit_level"
        case whatsappCredits = "whatsapp_credits"
        case specializationID = "specialization_id"
      //  case resource
      //  case clinicDetails = "clinic_details"
        case ownerID = "owner_id"
        case statsPortalURL = "stats_portal_url"
     //   case statsPortalUsers = "stats_portal_users"
    }
}
