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
        
        static let KXAPPKEY = "52f9b73d"
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
        static let KDoctorSignURL = "doctorSignURL"
        static let KUserId = "userId"
        static let KEncodedAuthToken = "encodedAuthToken"
        
        
        
    }
    
    
    struct KAPIPaths {
        static let KLoginAPI = "/sessions/sign_in"
        static let KVerifyLoginOTP = "/sessions/verify_otp"
        static let KClinicList = "/users/4/clinics"
        static let KAPonmentUtl = "/appointments?clinic=%d&date=%@&doctor=%d&schedule=%@"
        
    }
    
    struct KURL {
        
        static let KStagingURL = "https://api-stage.docterz.in"
        
        static let KAPICurrentVersion = "application/vnd.thepediatricnetwork.v2+json"
        static let KAPILocal = "http://192.168.1.114:3000"
        static let KS3URL = "https://s3-ap-southeast-1.amazonaws.com/"
        static let KAppURLForForceUpdate = "https://apps.apple.com/us/app/docterz/id1413185878"
        
        
     
    }
    
    struct KColor {
        static let AppThemeColor = UIColor(red: 0.9725, green: 0.6431, blue: 0.9765, alpha: 1)
        static let ClinicCellColor = UIColor(red: (144/255.0), green: (194/255.0), blue: (241/255.0), alpha: 1.0)
        static let PatientTableColor = UIColor(red: (230/255.0), green: (241/255.0), blue: (251/255.0), alpha: 1.0)
        static let PatienCellBoarderColor = UIColor(red: (139/255.0), green: (195/255.0), blue: (245/255.0), alpha: 1.0)      //  rgb(139 195 245)      //  rgb(230 241 251)
    }
    
    struct KFonts{
        static let FontHelveticaNueue = "HelveticaNeue"
        
    }
    
    
    
    
}
