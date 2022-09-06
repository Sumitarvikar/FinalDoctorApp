//
//  Constants.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//


import Foundation
import UIKit

struct Constants {
    
    struct KTitle {
        static let KAppName = "Docterz"
        static let KTitleLogout = "Logout"
        static let KTitleAppVersion = "App Version %@(%@)"
    }
    
    struct KLabel {
        static let KOk = "OK"
        static let KNo = "NO"
        static let KYes = "YES"
        static let KCancel = "Cancel"
       
    }
    
  
    
    struct KKeyValues {
//        static let KGoogleAPIKey = "AIzaSyBWd5XpzvWYEA2MEvfnq0e2vjU0wmSpGJ4"
//        static let KZendeskAppId = "76a436bf93931e8d2c12dd6e0801863c1dbdb24d8494b8dc"
//        static let KZendeskClientId =  "mobile_sdk_client_c551ddb20fcc6ee7d7d9"
         static let KXAPPKEY = "52f9b73d"
//        static let KRazorPayKey = "rzp_live_F5PcuZz9YT8QWp"
//        static let KStageRazorPayKey = "rzp_test_qegac7PuQwyUdm"
        static let KAuthorizationToken = "authorization_token"
        static let KNotificationToken = "notification_token"
        static let KVoIPPushNotificationToken = "voip_push_notification_token"
        static let KXApiKey = "api_key"
        static let KUserEmail = "userEmail"
        static let KLaunchSyncPostDate = "LastSyncPostCallDate"
        static let KUserMobile = "userMobile"
        static let KXSyncToken = "Sync_Token"
        static let KUserName = "username"
        static let KHeaderAccept = "Accept"
        static let KHeaderContentType = "Content-Type"
        static let KHeaderApplicationJSON = "application/json"
        static let KHeaderAuthorization = "Authorization"
//        static let KSyncPerPageCount = 500
        static let KSyncPerpageCount = "PerPageCount"
        static let KIsInitialSyncComplete = "isInitialSyncComplete"
        static let KCurrentDomainURL = "currentDomainUrl"
        static let KAppVersionServer = "iOSAppversionOnServer"
        static let KDoctorId = "doctorId"
        static let KDoctorName = "doctorName"
        static let KDoctorRegistrationNumber = "doctorRegNumber"
        static let KDoctorCityofPractice = "cityOfPractice"
        static let KDoctorSpecialization = "specialization"
        static let KDoctorQualifications = "doctorQualification"
        static let KDoctorProfileCompletedFlag = "doctorProfCompleteFlag"
          static let KIsClinicExistFlag = "clinicExistsOnSignUp"
//        static let KDoctorClinicExistsFlag = "ClinicExistsFlag"
       static let KDoctorSignURL = "doctorSignURL"
//        static let KDoctorProfileImageURL = "doctorImageURL"
//        static let KPrimaryDoctorClinicdata = "clinics_primaryUser_data"
//        static let KDoctorPreferredLanguges = "doctorPreferredLanguages"
//        static let KDomainURL = "domainURL"
    static let KUserId = "userId"
  static let KEncodedAuthToken = "encodedAuthToken"
//        static let KBlockOnlineApptMorning = "blockOnlineAppointmentsMorning"
//        static let KBlockOnlineApptEvening = "blockOnlineAppointmentEvening"
//        static let KShowGenericNameFirst = "showGenericNameFirst"
//        static let KShowScheduledVaccine = "showScheduledVaccine"
//        static let KShowRegionalTranslationofNumber = "showRegionalTranslationofNumber"
//        static let KLetterHead = "letterHead"
//        static let KTemplateFormat = "templateFormat"
//        static let KPrescribeOralDropsInMl = "prescribeOralDropsInMl"
//        static let KMessageKey = "message"
//        static let KSuccessKey = "success"
//        static let KChartTypeIAP = "IAP"
//        static let KChartTypeDowns = "Down"
//        static let KChartTypeFenton = "Fenton"
//        static let KQualificationsList = "qualificationsList"
//        static let KSpecializationsList = "specializationsList"
//        static let KAutoDoseType_MgKgDay = "mg_kg_day"
//        static let KAutoDoseType_MgKgDose = "weight"
//        static let KAutoDoseType_FixedDose = "dose"
//        static let KAutoDoseType_MgM2Dose = "mg_m2_dose"
//        static let KAutoDoseType_MgM2Day = "mg_m2_day"
//
//        static let KStagingBucketName = "tpn-mobile-staging";
//        static let KProductionBucketName = "tpn-mobile-production";
//        static let KUTCDateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
//        static let MINUTES = "minutes";
//        static let HOURS = "hours";
//        static let DAYS = "days";
//        static let WEEKS = "weeks";
//        static let MONTHS = "months";
//        static let YEARS = "years";
//
//        static let KDurationTypeMorning = "morning"
//        static let KDurationTypeEvening = "evening"
//        static let KDurationTypeAfternoon = "afternoon"
//        static let KDurationTypeNight = "night"
//
//        static let MINUTE_SINGLE = "minute";
//        static let HOUR_SINGLE = "hour";
//        static let YEAR_SINGLE = "year";
//        static let DAY_SINGLE = "day";
//        static let WEEK_SINGLE = "week";
//        static let MONTH_SINGLE = "month";

    
    }
//
    
    struct KAPIPaths {
        static let KLoginAPI = "/sessions/sign_in"
        static let KVerifyLoginOTP = "/sessions/verify_otp"
        static let KClinicList = "/users/4/clinics"
        
    }
    
    struct KURL {
        
       static let KStagingURL = "https://api-stage.docterz.in"

        static let KAPICurrentVersion = "application/vnd.thepediatricnetwork.v2+json"
        static let KAPILocal = "http://192.168.1.114:3000"
        static let KS3URL = "https://s3-ap-southeast-1.amazonaws.com/"
        static let KAppURLForForceUpdate = "https://apps.apple.com/us/app/docterz/id1413185878"
    }
//
    struct KColor {
        static let AppThemeColor = UIColor(red: 0.9725, green: 0.6431, blue: 0.9765, alpha: 1)
    }
    
    struct KFonts{
        static let FontHelveticaNueue = "HelveticaNeue"

    }
    
  
    
    
}
