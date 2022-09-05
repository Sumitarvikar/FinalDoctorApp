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
        static let KTitleSettings = "Settings"
        static let KTitleProfile = "My Profile"
        static let KTitleBillManagement = "Bill Management"
        static let KTitleVaccineReminderManager = "Vaccine Reminder Management"
        static let KTitleBuisnessAnalytics = "Business Analytics"
        static let KTitleInvoiceSettings = "Invoice Settings"
        static let KTitlePrescriptionSettings = "Prescription Setting"
        static let KTitleVaccineInventory = "Vaccine Inventory"
        static let KTitleReferrals = "Referral"
        static let KTitleReferences = "References Doctors"
        static let KTitleSMSSettings = "SMS Logs and Settings"
        static let KTitleWhattsappMessageSettings = "Whatsapp Message Settings"
        static let KTitleFollowupLogs = "Followup Logs"
        static let KTitlePatients = "Patients"
        static let KTitleTemplates = "Templates"
        static let KTitlePayments = "Payments"
        static let KTitleLogout = "Logout"
        static let KTitleClinicSettingAndPhotos = "Clinic Settings and Photos"
        static let KTitleLaunchProgram = "Launch Program"
        static let KTitleLabTrends = "Lab Trends"
        static let kTitlePatientSupportProgram = "Patient Support Programs"
        static let KTitleTranslations = "Translations"
        static let KTitleDrugs = "Drugs"
        static let KTitleAppVersion = "App Version %@(%@)"
    }
    
    struct KLabel {
        static let KOk = "OK"
        static let KNo = "NO"
        static let KYes = "YES"
        static let KCancel = "Cancel"
       
    }
    
  
    
    struct KKeyValues {
        static let KGoogleAPIKey = "AIzaSyBWd5XpzvWYEA2MEvfnq0e2vjU0wmSpGJ4"
        static let KZendeskAppId = "76a436bf93931e8d2c12dd6e0801863c1dbdb24d8494b8dc"
        static let KZendeskClientId =  "mobile_sdk_client_c551ddb20fcc6ee7d7d9"
        static let KXAPPKEY = "52f9b73d"
        static let KRazorPayKey = "rzp_live_F5PcuZz9YT8QWp"
        static let KStageRazorPayKey = "rzp_test_qegac7PuQwyUdm"
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
        static let KDoctorClinicExistsFlag = "ClinicExistsFlag"
        static let KDoctorSignURL = "doctorSignURL"
        static let KDoctorProfileImageURL = "doctorImageURL"
        static let KPrimaryDoctorClinicdata = "clinics_primaryUser_data"
        static let KDoctorPreferredLanguges = "doctorPreferredLanguages"
        static let KDomainURL = "domainURL"
        static let KUserId = "userId"
        static let KEncodedAuthToken = "encodedAuthToken"
        static let KBlockOnlineApptMorning = "blockOnlineAppointmentsMorning"
        static let KBlockOnlineApptEvening = "blockOnlineAppointmentEvening"
        static let KShowGenericNameFirst = "showGenericNameFirst"
        static let KShowScheduledVaccine = "showScheduledVaccine"
        static let KShowRegionalTranslationofNumber = "showRegionalTranslationofNumber"
        static let KLetterHead = "letterHead"
        static let KTemplateFormat = "templateFormat"
        static let KPrescribeOralDropsInMl = "prescribeOralDropsInMl"
        static let KMessageKey = "message"
        static let KSuccessKey = "success"
        static let KChartTypeIAP = "IAP"
        static let KChartTypeDowns = "Down"
        static let KChartTypeFenton = "Fenton"
        static let KQualificationsList = "qualificationsList"
        static let KSpecializationsList = "specializationsList"
        static let KAutoDoseType_MgKgDay = "mg_kg_day"
        static let KAutoDoseType_MgKgDose = "weight"
        static let KAutoDoseType_FixedDose = "dose"
        static let KAutoDoseType_MgM2Dose = "mg_m2_dose"
        static let KAutoDoseType_MgM2Day = "mg_m2_day"
        
        static let KStagingBucketName = "tpn-mobile-staging";
        static let KProductionBucketName = "tpn-mobile-production";
        static let KUTCDateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        static let MINUTES = "minutes";
        static let HOURS = "hours";
        static let DAYS = "days";
        static let WEEKS = "weeks";
        static let MONTHS = "months";
        static let YEARS = "years";
        
        static let KDurationTypeMorning = "morning"
        static let KDurationTypeEvening = "evening"
        static let KDurationTypeAfternoon = "afternoon"
        static let KDurationTypeNight = "night"
        
        static let MINUTE_SINGLE = "minute";
        static let HOUR_SINGLE = "hour";
        static let YEAR_SINGLE = "year";
        static let DAY_SINGLE = "day";
        static let WEEK_SINGLE = "week";
        static let MONTH_SINGLE = "month";

    
    }
//
    
    struct KAPIPaths {
        static let KClinicList = "/users/4/clinics"
        static let KUserApprovalAPI = "/home/user_info"
        static let KClinicDetailsAPI = "/clinics"
        static let KSignUpAPI = "/users/sign_up"
        static let KUpdateProfileAPI = "/users/"
        static let kUpdateDoctorProfileAPI = "/users/%d"
        static let KSetUpClinicTimimgAPI = "/update_clinic_timings"
        static let KLoginAPI = "/sessions/sign_in"
        static let KVerifyLoginOTP = "/sessions/verify_otp"
        static let KResendLoginOTP = "/sessions/send_otp?mobile=%@&country_code=%d"
        static let KGetClinicPhotos = "/users/%d/clinics/%d/clinic_photos"
        static let KDeleteClinicPhoto = "/users/%d/clinics/%d/clinic_photos/%d"
        static let KDeleteRecord = "/parents/%d/children/%d/records/%d" //** parent id , childid, recordId
        static let KDeleteInvoice = "/parents/%d/children/%d/invoices/%d" //** parent id , childid, invoiceId
        static let KSyncAPI = "/sync"
        static let KSetVaccineReminder = "/children/%d/child_vaccination_reminders"
        static let KSendProgramLaunch = "/programs/%d/launch"
        static let KDeleteProgram = "/programs/%d"
        static let kGetSupportPrograms = "/business_opportunities"
        static let kGetSupportProgramPatientsList = "/business_opportunities/%d/get_childs?page=%d&per_page=%d"
        static let kSupportProgramPatientsSearch = "/business_opportunities/%d/get_childs?query=%@"
        static let kDeleteChildFromupportProgram = "/business_opportunities/%d/remove_child?child_id=%d"
        static let kCreateSupportProgram = "/business_opportunities"
        static let kGetSMSCredits = "/business_opportunities/get_sms_credit"
        static let kTestSupportProgram = "/business_opportunities/%d/test_launch"
        static let kDraftSupportProgram = "/business_opportunities/%d?draft=true"
        static let kLaunchSupportProgram = "/business_opportunities/%d/launch"
        static let kDeleteSupportProgram = "/business_opportunities/%d"
        static let KLanguagesAPI = "/home/get_constants?keys=available_languages"
        static let KCriticalStockValue = "/brands/%d/get_critical_stock?doctor_id=%d"
        static let KGetVaccineInventory = "/vaccination_inventories?criteria=&format=json&from_date=%@&page=1&per_page=50&to_date=%@"
        static let KGetVaccineInventoryForBrand = "/vaccination_inventories?criteria=&format=json&brand_id=%d&from_date=%@&to_date=%@&page=1&per_page=50"
        static let KGetVaccineInventoryForBrandAndCriteria = "/vaccination_inventories?criteria=%@&format=json&brand_id=%d&from_date=%@&to_date=%@&page=1&per_page=50"
        static let KGetVaccineInventoryForBrandAndVaccine = "/vaccination_inventories?format=json&brand_id=%d&from_date=%@&to_date=%@&page=1&per_page=50&vaccine_name=%@"
        static let KGetVaccineInventoryForVaccine = "/vaccination_inventories?format=json&from_date=%@&to_date=%@&page=1&per_page=50&vaccine_name=%@"
        static let KGetVaccineInventoryForBrandAndClinic = "/vaccination_inventories?clinic_name=%@&criteria=&format=json&brand_id=%d&from_date=%@&to_date=%@&page=1&per_page=50"
        static let KGetVaccineInventoryForClinic = "/vaccination_inventories?clinic_name=%@&format=json&from_date=%@&to_date=%@&page=1&per_page=50"
        
        static let KGetVaccineInventoryForCriteria = "/vaccination_inventories?criteria=%@&format=json&from_date=%@&to_date=%@&page=1&per_page=50"
        static let KWeightBracketsAPI = "/home/get_constants?keys=weight_brackets"
        static let KDrugFormulationAPI = "/home/get_constants?keys=formulation_details"
        static let KChangePasswordAPI = "/users/loggedInUserId/change_password"
        static let KGetQualificationsAPI = "/home/get_constants?keys=educations"
        static let KGetSpecializationsAPI = "/home/get_constants?keys=specializations"
        static let KGetStatesListAPI = "/home/get_constants?keys=states"
        static let KGetCountriesAPI = "/countries"
        static let KGetStatesAPI = "/states?country=%@"
        static let KMarkAppointmentPaidAPI = "/appointments/%@"
        static let KPaymentReminderAPI = "/appointments/%d/payment_reminder"
        static let KGetNotificationsAPI = "/notifications"
        static let KMarkAllNotificationReadAPI = "/notifications/clear_all"
        static let KMarkSelectedNotificationReadAPI = "/notifications/%@"
        static let KMarkGetMissedAppointments = "/appointments/get_missed_appt_ids?clinic=%d&doctor=%d&schedule=%@&date=%@"
        static let KMarkOngoingAppointmentAPI = "/appointments/%d/mark_ongoing_appointment"
        static let KUnMarkOngoingAppointmentAPI = "/appointments/%d/unmark_ongoing_appointment"
        static let KForceUpdateAPI = "/home/get_app_version?os=ios"
        static let KSendOTPAPI = "/users/%d/send_otp_to_port_mobile_no"
        static let KValidateOTPAPI = "/users/%d/validate_otp_and_update_user"
        static let KSendOTPMergeChildAPI = "/users/%d/send_otp_to_merge_child"
        static let KValidateOTPMergeChildAPI = "/children/merge_children"
        static let KGetClinicListAPI = "/users/%d/clinics"
        static let KGetClinicSocialMediaLinksAPI = "/users/%d/edit"
        static let KUpdateClinicSocialMediaLinkAPI = "/users/%d?logged_in_user=Doctor"
        static let KGetClinicTestimonialsListAPI = "/doctors/%d/doctor_testimonials"
        static let KGetLabTrendsListAPI = "/doctors/%d/doctor_lab_trend_tests"
        static let KAddLabTrendsTestAPI = "/doctors/%d/doctor_lab_trend_tests"
        static let KLabTrendsSearchTestAPI = "/tests/doctor_tests?query=%@"
        static let KDeleteLabTrendsTestAPI = "/doctors/%d/doctor_lab_trend_tests/%d"
        static let KEditLabTrendsTestAPI = "/doctors/%d/doctor_lab_trend_tests/%d"
        static let KClinicLabTrendsTestAPI = "/parents/%d/children/%d/child_lab_trends?appointment_uuid=%@"
        static let KClinicAddLabTrendsTestAPI = "/parents/%d/children/%d/child_lab_trends/add_child_test?test_id=%d"
        static let KClinicUpdateLabTrendsTestAPI = "/parents/%d/children/%d/child_lab_trends/add_child_test?test_id=%d"
        static let KClinicUpdateLabTrendsTestValueAPI = "/parents/%d/children/%d/child_lab_trends/%d"
        static let KClinicDeleteLabTrendsTestValueAPI = "/parents/%d/children/%d/child_lab_trends/%d"
        static let KClinicDeleteLabTrendsTestAPI = "/parents/%d/children/%d/child_lab_trends/delete_child_test?appointment_uuid=%d&test_id=%d"
        static let KClinicAddLabTrendsTestValueAPI = "/parents/%d/children/%d/child_lab_trends"
        static let KClinicEditLabTrendsTestValuesAPI = "/parents/%d/children/%d/child_lab_trends/%d"
        static let KPostClinicTestimonialAPI = "/doctors/%d/doctor_testimonials"
        static let KUploadLetterHeadAPI = "/users/%d/clinics/%d/update_letter_head"
        static let KUpdateClinicInfoAPI = "/users/%d/clinics/%d"
        static let KUpdateClinicTimingAPI = "/users/%d/clinics/%d/update_clinic_timings"
        static let KUpdateBannerImageAPI = "/users/%d/clinics/%d/clinic_photos/%d"
        static let KUploadClinicPhoto = "/users/%d/clinics/%d/clinic_photos"
        static let KSendMessageAPI = "/parents/%d/children/%d/send_message"
        static let KGetSMSEstimateAPI = "/programs/%d/estimate"
        static let KZendeskURL = "https://docterz.zendesk.com"
        static let KRazorPayAPI = "/doctors/%d/load_sms_credits"
        static let KConsultationLinkAPI = "/appointments/%d"
        static let KNotifyOnCallInitAPI = "/appointments/%d/notify_on_video_call_initiation"
        static let KNotifyOnCallEndAPI = "/appointments/%d/notify_on_video_call_end"
        static let KNotifyOnCallAnswerAPI = "/appointments/%d/notify_on_video_call_answer"
        static let KNotifyOnCallDeclineAPI = "/appointments/%d/notify_on_video_call_decline"
        static let KBuyConsultationListAPI = "/buy_consultation_list"
        static let KClinicBuyConsultationFeeAPI = "/users/%d/clinics/%d/clinic_buy_consultation_fee"
        static let KReferralDoctorListAPI = "/doctors/%d/doctor_referrals?clinic_id=%d"
        static let kNotifyReferralDoctor = "/appointments/%d/notify_doctor_referral"
        static let kSendReferralNote = "/appointments/%d/send_referral_note"
        static let KGetReferencesDoctorsListAPI = "/referring_doctors"
        static let KGetReferencesUpdateReferencesDoctorsAPI = "/referring_doctors/%d"
        static let KDeleteReferencesDoctorsAPI = "/referring_doctors/%d?doctor_id=%d"
        static let KSendWhatsappMessageReferencesDoctorsAPI = "/referring_doctors/send_whatsapp_message?appointment_id=%d&id=%d"
        static let KSendEmailReferencesDoctorsAPI = "/referring_doctors/send_email?appointment_id=%d&email_body=Thank+you+for+referring+Anc+Pregnant+for+my+opinion.+Attaching+a+copy+of+my+prescription+link.+Have+a+nice+day.&id=%d"
        static let KGetAppointmentDetailsAPI = "/appointments/%d?type=prescription"
        static let KSearchProcedureBillItemAPI = "/procedures/search?appointment_id=%d&clinic_id=%d&query=%@"
        static let KSearchTestBillItemAPI = "/tests/search?appointment_id=%d&clinic_id=%d&query=%@"
        static let KSearchInventoryInvoiceAPI = "/inventory_invoices/search?clinic_id=%d&query=%@"
        static let KUpdateAppointmentInvoiceAPI = "/parents/%d/children/%d/invoices/%d"
        static let KCreateAppointmentInvoiceAPI = "/parents/%d/children/%d/invoices"
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
