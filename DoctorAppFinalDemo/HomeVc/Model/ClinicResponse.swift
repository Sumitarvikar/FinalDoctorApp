//
//  ClinicResponse.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import Foundation
struct ClinicResponse : Codable {
    let clinicDetails: [ClinicDetail]?

    enum CodingKeys: String, CodingKey {
        case clinicDetails = "clinic_details"
    }
}

// MARK: - ClinicDetail
struct ClinicDetail: Codable {
    let id: Int
    let name: String?
    let printHeaderHgt, printFooterHgt: Int?
    let landline: String?
    let isComplete, enableOnSearch: Bool?
    let email, mobile: String?
    let shareDrugsAcrossClinic, allowThirdPartyAccess, blockConfirmedApt: Bool?

    let sharePrescriptionAcrossClinic: Bool?
    let blockConfirmedAptMinutes: Int?
    let shareMedicalHistoryAcrossClinic, isActive: Bool?


    enum CodingKeys: String, CodingKey {
        case id, name
        case printHeaderHgt = "print_header_hgt"
        case printFooterHgt = "print_footer_hgt"
        case landline
        case isComplete = "is_complete"
        case enableOnSearch = "enable_on_search"
        case email, mobile
        case shareDrugsAcrossClinic = "share_drugs_across_clinic"
        case allowThirdPartyAccess = "allow_third_party_access"
        case blockConfirmedApt = "block_confirmed_apt"
       // case logo
        case sharePrescriptionAcrossClinic = "share_prescription_across_clinic"
        case blockConfirmedAptMinutes = "block_confirmed_apt_minutes"
        case shareMedicalHistoryAcrossClinic = "share_medical_history_across_clinic"
        case isActive = "is_active"

    }
}


