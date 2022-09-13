//
//  Extension.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import Foundation

import UIKit

extension UIViewController {
    
    
    func showAlert(title: String?, message: String?, firstActionTitle:String?, secondActionTitle:String?, alertStyle:UIAlertController.Style, firstActionStyle:UIAlertAction.Style?, secondActionStyle:UIAlertAction.Style?, firstActionHandler:((UIAlertAction) -> Void)?, secondActionHandler:((UIAlertAction) -> Void)?){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: alertStyle)
        if let first = firstActionTitle {
            let action = UIAlertAction(title: first, style: firstActionStyle ?? .default, handler: firstActionHandler)
            alert.addAction(action)
        }
        if let second = secondActionTitle {
            let action = UIAlertAction(title: second, style: secondActionStyle ?? .default, handler: secondActionHandler)
            alert.addAction(action)
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func showLoader()->UIAlertController{
        
        let Alert = UIAlertController(title: nil, message: "Plese wait", preferredStyle: .alert)
        let indicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        indicator.hidesWhenStopped = true
        indicator.startAnimating()
        indicator.startAnimating()
        indicator.style = UIActivityIndicatorView.Style.large
        Alert.view.addSubview(indicator)
        self.present(Alert, animated: true, completion: nil)
        return Alert
    }
    
    
    func stopLoader(loader : UIAlertController){
        DispatchQueue.main.async {
            loader.dismiss(animated: true)
        }
        
    }
}

extension UITextField
{
    func setLeftPadding(){
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftViewMode = .always
    }
    func customCornorRedius (redius : CGFloat){
        self.clipsToBounds = true
        self.layer.cornerRadius = redius
    }
    func customWidth (width : CGFloat){
        self.layer.borderWidth = width
        self.clipsToBounds = true
    }
}


extension UIButton{
    
    func customeCornerRadius(redius : CGFloat){
        self.layer.cornerRadius = redius
        self.clipsToBounds = true
    }
}


extension UILabel{
    
   
    func customCornorRedius (redius : CGFloat){
        self.clipsToBounds = true
        self.layer.cornerRadius = redius
    }
    func customWidth (width : CGFloat){
        self.layer.borderWidth = width
        self.clipsToBounds = true
    }
    
    
    
    
}
extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    var releaseVersionNumberPretty: String {
        return "v\(releaseVersionNumber ?? "1.0.0")"
    }
}

extension Notification.Name{
    
    static let addVerifyAlert = Notification.Name("addVerifyAlert")
    
}
extension Date {

    func dateFormatWithSuffix() -> String {
        return "dd'\(self.daySuffix())' MMM yyyy"
    }

    func daySuffix() -> String {
        let calendar = Calendar.current
        let components = (calendar as NSCalendar).components(.day, from: self)
        let dayOfMonth = components.day
        switch dayOfMonth {
        case 1, 21, 31:
            return "st"
        case 2, 22:
            return "nd"
        case 3, 23:
            return "rd"
        default:
            return "th"
        }
    }
}

