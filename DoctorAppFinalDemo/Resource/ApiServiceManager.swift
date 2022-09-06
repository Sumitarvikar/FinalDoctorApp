//
//  ApiServiceManager.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//


import Foundation
import UIKit

final class ApiServiceManager{
    private init(){}
    static var sharedInstance = ApiServiceManager()
    
//    func getApiData<T:Decodable>(requestUrl: URL, resultType: T.Type, completionHandler:@escaping(_ result: Array<CDClinicDetail>?)-> Void)
//    func getApiData<T:Decodable>(requestUrl: URL, resultType: T.Type, completionHandler:@escaping(_ result: [ClinicDetail]?)-> Void)
//    {
//
//            let defaults = UserDefaults.standard
//
//            let authorization : String? = defaults.value(forKey: Constants.KKeyValues.KAuthorizationToken) as? String
//            let apiKey : String? = defaults.value(forKey: Constants.KKeyValues.KXApiKey) as? String
//
//            var request =  URLRequest (url: requestUrl)
//            request.httpMethod = "GET"
//            request.setValue(Constants.KKeyValues.KHeaderApplicationJSON, forHTTPHeaderField: Constants.KKeyValues.KHeaderContentType)
//            request.setValue(Constants.KURL.KAPICurrentVersion, forHTTPHeaderField: Constants.KKeyValues.KHeaderAccept)
//            request.setValue(Constants.KKeyValues.KXAPPKEY , forHTTPHeaderField: "X-App-Key")
//
//            let buildVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as? String
//
//            request.setValue(String(format:"%@(%@)", Bundle.main.releaseVersionNumberPretty,buildVersion ?? "" ) , forHTTPHeaderField: "X-App-Version")
//            let deviceId : String = (UIDevice.current.identifierForVendor?.uuidString)!
//            request.setValue(deviceId, forHTTPHeaderField: "X-Device-Id")
//
//            if let auth = authorization
//            {
//                request.setValue(auth , forHTTPHeaderField: Constants.KKeyValues.KHeaderAuthorization)
//            }
//
//            if let xApiKey = apiKey{
//                request.setValue(xApiKey , forHTTPHeaderField: "X-Api-Key")
//            }
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//            if let data = data {
//                do {
//
//                    if error == nil{
//
//                  // let json = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//
//
//                    //    commpi
//
//                    let result = try JSONDecoder().decode(ClinicResponse.self, from: data)
//
//                    print(" **************jeson*************************")
//                    print(result.clinicDetails!)
//                    completionHandler(result.clinicDetails!)
//
//                    }
//                } catch {
//                    print(error)
////                    completionHandler(error)
//                }
//            }
//
//        }.resume()
//    }
    
    
    
    func getApiData<T:Decodable>(requestUrl :URL,resultType: T.Type, completionHandler:@escaping(_ result: T?)-> ()){
        
        let defaults = UserDefaults.standard
      
                  let authorization : String? = defaults.value(forKey: Constants.KKeyValues.KAuthorizationToken) as? String
                  let apiKey : String? = defaults.value(forKey: Constants.KKeyValues.KXApiKey) as? String
      
                  var request =  URLRequest (url: requestUrl)
                  request.httpMethod = "GET"
                  request.setValue(Constants.KKeyValues.KHeaderApplicationJSON, forHTTPHeaderField: Constants.KKeyValues.KHeaderContentType)
                  request.setValue(Constants.KURL.KAPICurrentVersion, forHTTPHeaderField: Constants.KKeyValues.KHeaderAccept)
                  request.setValue(Constants.KKeyValues.KXAPPKEY , forHTTPHeaderField: "X-App-Key")
      
                  let buildVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as? String
      
                  request.setValue(String(format:"%@(%@)", Bundle.main.releaseVersionNumberPretty,buildVersion ?? "" ) , forHTTPHeaderField: "X-App-Version")
                  let deviceId : String = (UIDevice.current.identifierForVendor?.uuidString)!
                  request.setValue(deviceId, forHTTPHeaderField: "X-Device-Id")
      
                  if let auth = authorization
                  {
                      request.setValue(auth , forHTTPHeaderField: Constants.KKeyValues.KHeaderAuthorization)
                  }
      
                  if let xApiKey = apiKey{
                      request.setValue(xApiKey , forHTTPHeaderField: "X-Api-Key")
                  }
              let session = URLSession.shared
              session.dataTask(with: request) { (data, response, error) in
                  if let response = response {
                      print(response)
                  }
                  if let data = data {
                      
                      do {
                          
                          
      
                          if error == nil{
      
                     //   let json = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                            let result = try? JSONDecoder().decode(resultType, from: data)
                          //    commpi
      
//                          let result = try JSONDecoder().decode(ClinicResponse.self, from: data)
//
//                          print(" **************jeson*************************")
                       //   print(result.clinicDetails!)
                          completionHandler(result!)
      
                         }
                      } catch {
                          print(error)
      //                    completionHandler(error)
                      }
                  }
      
              }.resume()
    }
    
    
    
//completionHandler:@escaping(_ result: Any)
    func postApiData<T:Decodable>(requestUrl :URL,requestBody :Data ,resultType: T.Type, completionHandler:@escaping(_ result: Any)-> ()){
        let buildVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as? String
        let appVersion =  String(format:"%@(%@)", Bundle.main.releaseVersionNumberPretty,buildVersion ?? "" )
        let deviceId : String = UIDevice.current.identifierForVendor!.uuidString

        
    var urlRequest = URLRequest(url: requestUrl)
        
       let headers = [Constants.KKeyValues.KHeaderAccept : Constants.KURL.KAPICurrentVersion,
                   Constants.KKeyValues.KHeaderContentType: Constants.KKeyValues.KHeaderApplicationJSON,
                   "X-App-Key": Constants.KKeyValues.KXAPPKEY,"X-App-Version" :appVersion, "X-Device-Id" : deviceId]
        
        
        print(headers)

        print(requestBody)
        urlRequest.httpMethod = "post"
              urlRequest.httpBody = requestBody
             urlRequest.addValue(  Constants.KURL.KAPICurrentVersion , forHTTPHeaderField: Constants.KKeyValues.KHeaderAccept)
              urlRequest.addValue(  Constants.KKeyValues.KHeaderApplicationJSON , forHTTPHeaderField: Constants.KKeyValues.KHeaderContentType)
              urlRequest.addValue( Constants.KKeyValues.KXAPPKEY, forHTTPHeaderField: "X-App-Key" )
               urlRequest.addValue(appVersion , forHTTPHeaderField: "X-App-Version")
               urlRequest.addValue(deviceId , forHTTPHeaderField: "X-Device-Id")

        urlRequest.httpBody = requestBody
        urlRequest.timeoutInterval = 20
        let session = URLSession.shared
        session.dataTask(with: urlRequest) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                if let JSONString = String(data: data, encoding: String.Encoding.utf8) {
                   print(JSONString)
                }
                
                do {
                    print(data)
                    let json = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                  //  print(json)
                    if error == nil{
                    completionHandler(json)
                    }
                    else{
                        
                    }
                } catch {
                    print(error)
//                    completionHandler(error)
                }
            }
        }.resume()
    }
    
    
}
