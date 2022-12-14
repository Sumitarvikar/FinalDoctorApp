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
    
    func getApiData<T:Decodable>(requestUrl :URL,resultType: T.Type, completionHandler:@escaping(_ isSucessful:Bool,_ result: T?)-> ()){
        
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
        print(request.allHTTPHeaderFields)
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            guard
                let data = data,
                let response = response as? HTTPURLResponse,
                error == nil
            else {
                print("error", error ?? URLError(.badServerResponse))
                completionHandler(false, nil )
                return
            }
            
            guard (200 ... 299) ~= response.statusCode else {
                print("statusCode  \(response.statusCode)")
                print("response = \(response)")
                print(error)
                
                completionHandler(false,nil)
                return
            }
            
            do {
                let repons = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(repons)
                let responseObject = try? JSONDecoder().decode(resultType.self, from: data)
                completionHandler(true,responseObject )
                print(responseObject)
            } catch {
                print(error) // parsing error
                completionHandler(false,nil)
            }
            
            
        }.resume()
    }
    
    
    
    
    func postApiData<T:Decodable>(requestUrl :URL,requestBody :Data ,resultType: T.Type, completionHandler:@escaping(_ aIsSuccessful: Bool ,_ result: Any)-> ()){
        let buildVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as? String
        let appVersion =  String(format:"%@(%@)", Bundle.main.releaseVersionNumberPretty,buildVersion ?? "" )
        let deviceId : String = UIDevice.current.identifierForVendor!.uuidString
        var urlRequest = URLRequest(url: requestUrl)
        print(requestBody)
        urlRequest.httpMethod = "post"
        urlRequest.httpBody = requestBody
        urlRequest.addValue(  Constants.KURL.KAPICurrentVersion , forHTTPHeaderField: Constants.KKeyValues.KHeaderAccept)
        urlRequest.addValue(  Constants.KKeyValues.KHeaderApplicationJSON , forHTTPHeaderField: Constants.KKeyValues.KHeaderContentType)
        urlRequest.addValue( Constants.KKeyValues.KXAPPKEY, forHTTPHeaderField: "X-App-Key" )
        urlRequest.addValue(appVersion , forHTTPHeaderField: "X-App-Version")
        urlRequest.addValue(deviceId , forHTTPHeaderField: "X-Device-Id")
        
        urlRequest.httpBody = requestBody
  //      urlRequest.timeoutInterval = 20
        let session = URLSession.shared
        session.dataTask(with: urlRequest) { (data, response, error) in
            guard
                let data = data,
                let response = response as? HTTPURLResponse,
                error == nil
            else {
                print("error", error ?? URLError(.badServerResponse))
                completionHandler(false,error!)
                return
            }
            
            guard (200 ... 299) ~= response.statusCode else {
                print("statusCode  \(response.statusCode)")
                print("response = \(response)")
                print(error)
                
                completionHandler(false,response.statusCode)
                return
            }
            
            do {
                let responseObject = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                completionHandler(true,responseObject)
                print(responseObject)
            } catch {
                print(error) // parsing error
                completionHandler(false,error)
            }
            
            
        }.resume()
    }
    
    
}
