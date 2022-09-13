//
//  LoginViewModel.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import Foundation
import UIKit


protocol LoginViewModelDelegate {
    func didReceiveLoginResponse(loginResponse: Any?)
    func loginAlert(loginResponse : String?)
    func showloaderToHomeScreen()
    func stopLoaderToHomeScreen()
}
struct LoginViewModel{
    var delegate : LoginViewModelDelegate?
    func loginUser(username : String , password : String){
        
        let validation = LoginValidation().Validate(username: username, password: password)
        let authorization : String? = UserDefaults.standard.value(forKey: Constants.KKeyValues.KAuthorizationToken) as? String
        let deviceId :String = UIDevice.current.identifierForVendor!.uuidString
        if(validation.succes){
            delegate?.showloaderToHomeScreen()
            self.loginUser(username: username, password: password) {
                (isSuccesfull , response) in
                DispatchQueue.main.async {
                    delegate?.stopLoaderToHomeScreen()
                    if isSuccesfull == true{
                        self.delegate?.didReceiveLoginResponse(loginResponse: validation)              }
                    else{
                        self.delegate?.loginAlert(loginResponse: response as! String)
                        print("###################")
                        print(response)
                    }
                }
            }
        }
        else{
            self.delegate?.loginAlert(loginResponse: validation.error)
            
        }
    }
    
    
    
    func loginUser(username : String , password : String, completion : @escaping (_ IsSuccesFul : Bool,_ result: Any? ) -> Void)
    {
        let loginurl = URL(string: "\(Constants.KURL.KStagingURL)\(Constants.KAPIPaths.KLoginAPI)")!
        print(loginurl)
        
        let deviceId : String = UIDevice.current.identifierForVendor!.uuidString
        let defaults = UserDefaults.standard
       let Authorization : String? = defaults.value(forKey: Constants.KKeyValues.KAuthorizationToken) as? String
        let apiKey : String? = defaults.value(forKey: Constants.KKeyValues.KXApiKey) as? String
        let notificationToken : String? = defaults.value(forKey: Constants.KKeyValues.KNotificationToken) as? String
        let voipToken : String? = defaults.value(forKey: Constants.KKeyValues.KVoIPPushNotificationToken) as? String
        defaults.setValue(username, forKey: Constants.KKeyValues.KUserName)
        let params: [String: Any] = [
            "login": username,
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
            ApiServiceManager.sharedInstance.postApiData(requestUrl: loginurl, requestBody: jsonData! ,resultType: LoginResponse.self) { (IsSuccesFul,response) in
                print("Sucesss")
                
                if IsSuccesFul == true{
                    let  data = response as? [String:Any]
                    
                    if let askOTP = data?["ask_otp"] as? Bool, askOTP == true{
                        NotificationCenter.default.post(name: .addVerifyAlert, object: nil)
                    }
                    else{
                        saveLogiinDataUserdefault(data: data!)
                    }
                    completion(IsSuccesFul,response)
                }
                else{
                    
                    completion(IsSuccesFul,"Invalid UserNamer Or Password")
                }
                
            }
        }
        catch let error{
            print(error)
        }
    }
    
    
    
    
    func verifyotp( userName : String ,otp : String , completion : @escaping (_ IsSuccesful : Bool,_ result: Any? ) -> Void){
        
        let defaults = UserDefaults.standard
        let deviceId : String = (UIDevice.current.identifierForVendor?.uuidString)!
        let notificationToken : String? = defaults.value(forKey: Constants.KKeyValues.KNotificationToken) as? String
        let voipToken : String? = defaults.value(forKey: Constants.KKeyValues.KVoIPPushNotificationToken) as? String
        
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
            //            ApiServiceManager.sharedInstance.postApiData(requestUrl: urlString!, requestBody: jsonData!, resultType: LoginData.self)
            ApiServiceManager.sharedInstance.postApiData(requestUrl: urlString!, requestBody: jsonData!, resultType: LoginResponse.self) {isSucessFull , result  in
                print(result)
                if  let data = result as? [String : Any]{
                    saveLogiinDataUserdefault(data: data)
                    completion(isSucessFull , result)
                }
                else{
                    completion(false , result)
                }
            }
        }
        
    }
    
    
    func saveLogiinDataUserdefault(data : [String:Any]){
        
        let defaults = UserDefaults.standard
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

