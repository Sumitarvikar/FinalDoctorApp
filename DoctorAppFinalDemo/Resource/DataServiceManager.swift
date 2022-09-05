//
//  DataServiceManager.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import Foundation
import UIKit

final class DataServiceManager{
    
    static let shared = DataServiceManager()
    
    func loginUser(username : String , password : String, completion : @escaping (_ result: Any? ) -> Void)
    {
        let loginurl = URL(string: "\(Constants.KURL.KStagingURL)\(Constants.KAPIPaths.KLoginAPI)")!
        print(loginurl)
        let deviceId : String = UIDevice.current.identifierForVendor!.uuidString
        let defaults = UserDefaults.standard
        let Authorization : String? = defaults.value(forKey: Constants.KKeyValues.KAuthorizationToken) as? String
        let apiKey : String? = defaults.value(forKey: Constants.KKeyValues.KXApiKey) as? String
        let notificationToken : String? = defaults.value(forKey: Constants.KKeyValues.KNotificationToken) as? String
        let voipToken : String? = defaults.value(forKey: Constants.KKeyValues.KVoIPPushNotificationToken) as? String
        let params: [String: Any] = [
            "login": "sumit.arvikar@joshsoftware.come",
            "password": password,
            "device_id": deviceId,
            "notification_token": notificationToken ?? "",
            "os_type": "ios",
            "voip_token": voipToken ?? ""]
        print(params)
        var loginresponse : Any?
        do{
            let jsonData = try? JSONSerialization.data(withJSONObject: params)
            print(jsonData)
            ApiServiceManager.sharedInstance.postApiData(requestUrl: loginurl, requestBody: jsonData! ,resultType: LoginData.self) { (response ) in
                print("Sucesss")
                
                let  data = response as? [String:Any]
                
                if let ProfileData = data!["data"] as? [String:Any]{
                    
                    if let  val = ProfileData["sync_per_page_count"]{
                        print(val)
                        defaults.setValue(val, forKey: Constants.KKeyValues.KSyncPerpageCount)}
                    
                    
                    if let authToken = ProfileData["auth_token"] as? String{
                        defaults.setValue(authToken, forKey: Constants.KKeyValues.KAuthorizationToken)
                    }
                    if let apiKey = ProfileData["api_key"] as? String{
                        defaults.setValue(apiKey, forKey: Constants.KKeyValues.KXApiKey)
                    }
                    if let userId =  ProfileData["id"] as? Int32{
                        UserDefaults.standard.setValue(userId, forKey: Constants.KKeyValues.KUserId)
                        
                    }
                    
                    if let mail = ProfileData["email"] as? String{
                        defaults.setValue(mail, forKey: Constants.KKeyValues.KUserEmail)
                    }
                    
                    if let mobile = ProfileData["mobile"] as? String{
                        defaults.setValue(mobile, forKey: Constants.KKeyValues.KUserMobile)
                    }
                    
                    
                    if let city = ProfileData["city_of_practice"] as? String{
                        defaults.setValue(city, forKey: Constants.KKeyValues.KDoctorCityofPractice)
                    }
                    
                    if let encodedAuthToken = ProfileData["encoded_auth_token"] as? String{
                        UserDefaults.standard.setValue(encodedAuthToken, forKey: Constants.KKeyValues.KEncodedAuthToken)
                    }
                    
                    let isProfileCompleted = ProfileData["profile_complete"] as? Bool
                    
                    if let clinicExist = ProfileData["clinic_exist"] as? Bool{
                        defaults.setValue(clinicExist, forKey: Constants.KKeyValues.KIsClinicExistFlag)
                    }
                    
                    if let resource = ProfileData["resource"] as? [String : Any]
                    {
                        if let signatureImageUrl = resource["signature"] as? String{
                            defaults.setValue(signatureImageUrl, forKey: Constants.KKeyValues.KDoctorSignURL)
                        }
                        
                        if let regNumber = resource["registration_no"] as? String
                        {
                            defaults.setValue(regNumber, forKey: Constants.KKeyValues.KDoctorRegistrationNumber)
                        }
                        
                        if let specialisation = resource["specialization"] as? String
                        {
                            defaults.setValue(specialisation, forKey: Constants.KKeyValues.KDoctorSpecialization)
                        }
                        
                        if let qualifications = resource["qualifications"] as? [String]
                        {
                            defaults.setValue(qualifications, forKey: Constants.KKeyValues.KDoctorQualifications)
                        }
                    }
                }
                completion(response)
            }
        }
        catch let error{
            print(error)
        }
        
        
    }
    
    func verifyotp( userName : String ,otp : String , completion : @escaping (_ result: Any? ) -> Void){
        
        let defaults = UserDefaults.standard
        let deviceId : String = (UIDevice.current.identifierForVendor?.uuidString)!
        let notificationToken : String? = defaults.value(forKey: Constants.KKeyValues.KNotificationToken) as? String
        let voipToken : String? = defaults.value(forKey: Constants.KKeyValues.KVoIPPushNotificationToken) as? String
        var headers:[String:String]?
        headers = [Constants.KKeyValues.KHeaderAccept : Constants.KURL.KAPICurrentVersion,
                   Constants.KKeyValues.KHeaderContentType: Constants.KKeyValues.KHeaderApplicationJSON,
                   "X-App-Key": Constants.KKeyValues.KXAPPKEY
        ]
        
        let params = ["session" : [
            "login" : userName,
            "otp" : otp,
            "device_id" : deviceId,
            "notification_token" : notificationToken ?? "",
            "os_type" : "ios",
            "voip_token": voipToken ?? ""
        ]]
        let urlString = URL( string: "\(Constants.KURL.KStagingURL)\(Constants.KAPIPaths.KVerifyLoginOTP)")
        do{
            let jsonData = try? JSONSerialization.data(withJSONObject: params)
            print(jsonData)
            
            ApiServiceManager.sharedInstance.postApiData(requestUrl: urlString!, requestBody: jsonData!, resultType: LoginData.self) { result in
                print(result)
                
                
                let data = result as! [String : Any]
                
                
                if let ProfileData = data["data"] as? [String:Any]{
                    
                    if let val = ProfileData["sync_per_page_count"] as? Int32{
                        defaults.setValue(val, forKey: Constants.KKeyValues.KSyncPerpageCount)
                    }
                    
                    if let authToken = ProfileData["auth_token"] as? String{
                        defaults.setValue(authToken, forKey: Constants.KKeyValues.KAuthorizationToken)
                    }
                    if let apiKey = ProfileData["api_key"] as? String{
                        defaults.setValue(apiKey, forKey: Constants.KKeyValues.KXApiKey)
                    }
                    
                    if let mail = ProfileData["email"] as? String{
                        defaults.setValue(mail, forKey: Constants.KKeyValues.KUserEmail)
                    }
                    
                    if let mobile = ProfileData["mobile"] as? String{
                        defaults.setValue(mobile, forKey: Constants.KKeyValues.KUserMobile)
                    }
                    
                    if let userId =  ProfileData["id"] as? Int32{
                        UserDefaults.standard.setValue(userId, forKey: Constants.KKeyValues.KUserId)
                        //                                Crashlytics.crashlytics().setUserID("\(userId)")
                    }
                    
                    if let encodedAuthToken = ProfileData["encoded_auth_token"] as? String{
                        UserDefaults.standard.setValue(encodedAuthToken, forKey: Constants.KKeyValues.KEncodedAuthToken)
                    }
                    
                    let isProfileCompleted = ProfileData["profile_complete"] as? Bool
                    
                    if let clinicExist = ProfileData["clinic_exist"] as? Bool{
                        defaults.setValue(clinicExist, forKey: Constants.KKeyValues.KIsClinicExistFlag)
                    }
                    
                    if let city = ProfileData["city_of_practice"] as? String{
                        defaults.setValue(city, forKey: Constants.KKeyValues.KDoctorCityofPractice)
                    }
                    
                    if let resource = ProfileData["resource"] as? [String : Any]
                    {
                        if let signatureImageUrl = resource["signature"] as? String{
                            defaults.setValue(signatureImageUrl, forKey: Constants.KKeyValues.KDoctorSignURL)
                        }
                        
                        if let regNumber = resource["registration_no"] as? String
                        {
                            defaults.setValue(regNumber, forKey: Constants.KKeyValues.KDoctorRegistrationNumber)
                        }
                        
                        if let specialisation = resource["specialization"] as? String
                        {
                            defaults.setValue(specialisation, forKey: Constants.KKeyValues.KDoctorSpecialization)
                        }
                        
                        if let qualifications = resource["qualifications"] as? [String]
                        {
                            defaults.setValue(qualifications, forKey: Constants.KKeyValues.KDoctorQualifications)
                        }
                    }
                }
                
            }
        }
        
    }
    
    //@escaping (Array<CDClinicDetail>?)
    func getclinicdetails(completionHandler: @escaping (Array<ClinicDetail>) -> Void){
        
        let url = URL(string: "\(Constants.KURL.KStagingURL)\(Constants.KAPIPaths.KClinicList)")!
        ApiServiceManager.sharedInstance.getApiData(requestUrl: url, resultType: ClinicDetail?.self) { result in
            if let result = result {
                print(result)
                completionHandler(result as! Array<ClinicDetail>)
            }
            
        }
    }
    
}
