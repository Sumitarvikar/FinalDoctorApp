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
    let id: Int?
    let name: String?
    let printHeaderHgt, printFooterHgt: Int?
    let landline: String?
    let isComplete, enableOnSearch: Bool?
    let email, mobile: String?
    let shareDrugsAcrossClinic, allowThirdPartyAccess, blockConfirmedApt: Bool?
//    let logo: JSONNull?
    let sharePrescriptionAcrossClinic: Bool?
    let blockConfirmedAptMinutes: Int?
    let shareMedicalHistoryAcrossClinic, isActive: Bool?
//    let addressAttributes: AddressAttributes?
//    let clinicOnlineDoctorsList: [ClinicOnlineDoctorsList]?
//    let owner: Owner?
//    let associatedClinicDoctors: [Owner]?
//    let clinicDoctorInfo: ClinicDoctorInfo?
//    let clinicTimings, videoClinicTimings: [ClinicTiming]?

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
//case addressAttributes = "address_attributes"
// case clinicOnlineDoctorsList = "clinic_online_doctors_list"
      //  case owner
//case associatedClinicDoctors = "associated_clinic_doctors"
       // case clinicDoctorInfo = "clinic_doctor_info"
       // case clinicTimings = "clinic_timings"
       // case videoClinicTimings = "video_clinic_timings"
    }
}

// MARK: - AddressAttributes
//struct AddressAttributes: Codable {
//    let id: Int?
//    let address, area, postalCode: String?
//    let city: City?
//    let state: State?
//    let country: Country?
//    let lat, lng: String?
//    let addressableType: AddressableType?
//    let addressableID: Int?
//    let addressLine2, district: JSONNull?
//    let stateName: StateName?
//    let countryName: CountryName?
//
//    enum CodingKeys: String, CodingKey {
//        case id, address, area
//        case postalCode = "postal_code"
//        case city, state, country, lat, lng
//        case addressableType = "addressable_type"
//        case addressableID = "addressable_id"
//        case addressLine2 = "address_line2"
//        case district
//        case stateName = "state_name"
//        case countryName = "country_name"
//    }
//}

//enum AddressableType: String, Codable {
//    case clinic = "Clinic"
//}
//
//enum City: String, Codable {
//    case amravati = "Amravati"
//    case mumbai = "Mumbai"
//    case pune = "Pune"
//}
//
//enum Country: String, Codable {
//    case af = "AF"
//    case aw = "AW"
//    case countryIN = "IN"
//}
//
//enum CountryName: String, Codable {
//    case afghanistan = "Afghanistan"
//    case aruba = "Aruba"
//    case india = "India"
//}
//
//enum State: String, Codable {
//    case mh = "MH"
//    case mp = "MP"
//}
//
//enum StateName: String, Codable {
//    case madhyaPradesh = "Madhya Pradesh"
//    case maharashtra = "Maharashtra"
//}
//
//// MARK: - Owner
//struct Owner: Codable {
//    let id: Int?
//    let mobile, email, name: String?
//    let resource: Resource?
//    let showForAppointmentBooking: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case id, mobile, email, name, resource
//        case showForAppointmentBooking = "show_for_appointment_booking"
//    }
//}
//
//// MARK: - Resource
//struct Resource: Codable {
//    let id: Int?
//    let specialization: Specialization?
//}
//
//enum Specialization: String, Codable {
//    case asthmaAndAllergySpecialist = "Asthma and Allergy Specialist"
//    case bariatricSurgeon = "Bariatric Surgeon"
//    case obstetricianGynecologist = "Obstetrician & Gynecologist"
//    case paediatrician = "Paediatrician"
//}
//
//// MARK: - ClinicDoctorInfo
//struct ClinicDoctorInfo: Codable {
//    let id: Int?
//    let realAptStatusMorning: RealAptStatusNing?
//    let lastAptMornTime, lastAptEveTime, onLeaveTillDate: String?
//    let realAptStatusEvening: RealAptStatusNing?
//    let appointmentTimeSlot: Int?
//    let onLeave: Bool?
//    let onLeaveFromDate: String?
//    let blockOnlineAppointmentsMorning, blockOnlineAppointmentsEvening, blockAskQuestion, blockTeleConsultation: Bool?
//    let blockVideoConsultation: Bool?
//    let teleConsultationFee, videoConsultationFee: Int?
//    let razorpayAccountID: JSONNull?
//    let isLastAptMornTime, isLastAptEveTime: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case realAptStatusMorning = "real_apt_status_morning"
//        case lastAptMornTime = "last_apt_morn_time"
//        case lastAptEveTime = "last_apt_eve_time"
//        case onLeaveTillDate = "on_leave_till_date"
//        case realAptStatusEvening = "real_apt_status_evening"
//        case appointmentTimeSlot = "appointment_time_slot"
//        case onLeave = "on_leave"
//        case onLeaveFromDate = "on_leave_from_date"
//        case blockOnlineAppointmentsMorning = "block_online_appointments_morning"
//        case blockOnlineAppointmentsEvening = "block_online_appointments_evening"
//        case blockAskQuestion = "block_ask_question"
//        case blockTeleConsultation = "block_tele_consultation"
//        case blockVideoConsultation = "block_video_consultation"
//        case teleConsultationFee = "tele_consultation_fee"
//        case videoConsultationFee = "video_consultation_fee"
//        case razorpayAccountID = "razorpay_account_id"
//        case isLastAptMornTime = "is_last_apt_morn_time"
//        case isLastAptEveTime = "is_last_apt_eve_time"
//    }
//}
//
//enum RealAptStatusNing: String, Codable {
//    case onSchedule = "On Schedule"
//}
//
//// MARK: - ClinicOnlineDoctorsList
//struct ClinicOnlineDoctorsList: Codable {
//    let id, clinicID, doctorID: Int?
//    let razorpayAccountID: JSONNull?
//    let clinicCommission, doctorzCommission: Int?
//    let doctorName: String?
//    let doctorSpecialization: Specialization?
//    let doctorMobile: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case clinicID = "clinic_id"
//        case doctorID = "doctor_id"
//        case razorpayAccountID = "razorpay_account_id"
//        case clinicCommission = "clinic_commission"
//        case doctorzCommission = "doctorz_commission"
//        case doctorName = "doctor_name"
//        case doctorSpecialization = "doctor_specialization"
//        case doctorMobile = "doctor_mobile"
//    }
//}
//
//// MARK: - ClinicTiming
//struct ClinicTiming: Codable {
//    let id: Int?
//    let morningStartTime, morningEndTime, eveningStartTime, eveningEndTime: String?
//    let isActiveMorning: Bool?
//    let day: Day?
//    let clinicsUserID: Int?
//    let isActiveEvening: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case morningStartTime = "morning_start_time"
//        case morningEndTime = "morning_end_time"
//        case eveningStartTime = "evening_start_time"
//        case eveningEndTime = "evening_end_time"
//        case isActiveMorning = "is_active_morning"
//        case day
//        case clinicsUserID = "clinics_user_id"
//        case isActiveEvening = "is_active_evening"
//    }
//}
//
//enum Day: String, Codable {
//    case friday = "Friday"
//    case monday = "Monday"
//    case saturday = "Saturday"
//    case sunday = "Sunday"
//    case thursday = "Thursday"
//    case tuesday = "Tuesday"
//    case wednesday = "Wednesday"
//}
