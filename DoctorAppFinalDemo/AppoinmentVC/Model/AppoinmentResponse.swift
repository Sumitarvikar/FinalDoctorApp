
import Foundation


//struct AppoinmentApiResponse : Codable {
//    let clinics : clinicdata?
//}
//
//// MARK: - DataClass
//struct clinicdata : Codable {
//   let appointments: [Appointment]?
//    }

struct AppoinmentApiResponse: Codable {
    let data: ClinicData?
}

// MARK: - DataClass
struct ClinicData : Codable {
  let appointments: [Appointment]?
//
    
}

// MARK: - Appointment
struct Appointment: Codable {
    let id: Int?
    let clinicID, doctorID: Int?
    let  name, gender, age: String?
    let mobile: String?
    let weight:Int?

    enum CodingKeys: String, CodingKey {
        case id
        case clinicID = "clinic_id"
        case doctorID = "doctor_id"
        case  name, gender, age, mobile ,weight
    }
}


