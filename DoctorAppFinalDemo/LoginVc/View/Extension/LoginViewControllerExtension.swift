//
//  LoginViewControllerExtension.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 06/09/22.
//
import UIKit
import Foundation

extension LoginViewController : LoginViewModelDelegate{
    func loginAlert(loginResponse: String?) {
        showAlert(title:"Error" , message:loginResponse , firstActionTitle: Constants.KLabel.KOk, secondActionTitle: nil, alertStyle: .alert, firstActionStyle: .default, secondActionStyle: nil, firstActionHandler: nil, secondActionHandler: nil)
    }
    
    func didReceiveLoginResponse(loginResponse: Any?){
        if let resp = loginResponse
        {
            let vc = HomeViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    
    @objc func  showVerificationOtpAlert(){
        
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: "Otp", message: "", preferredStyle: .alert)
            alertController.addTextField { field in
                field.placeholder = "Enter Otp here"
            }
            alertController.addAction(UIAlertAction(title: "Submit", style: .default, handler: { _ in
                guard let fields = alertController.textFields else {return }
                let otp = fields[0].text
                let username : String? = UserDefaults.standard.value(forKey: Constants.KKeyValues.KUserName) as? String
                self.loginVM.verifyotp(userName: username!, otp: otp!) {  isSuccesful ,result in
                    DispatchQueue.main.async {
                        if isSuccesful == true{
                            self.navigateToHomeScreen()
                        }
                        else{
                            self.showAlert(title: "Invalid", message: "Entered OTP is either invalid or expired!", firstActionTitle: "Ok", secondActionTitle: nil, alertStyle: .alert, firstActionStyle: .default, secondActionStyle: nil, firstActionHandler: nil, secondActionHandler: nil)
                        }
                    }
                }
            }))
            alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            self.present(alertController, animated: false)
        }
    }
    
    func showloaderToHomeScreen() {
        iLoader.isHidden = false
        iLoader.startAnimating()
    }
    
    
    func stopLoaderToHomeScreen() {
        iLoader.isHidden = true
        // iLoader.stopAnimating()
    }
    
    
    func navigateToHomeScreen(){
        let vc = HomeViewController()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    
    
    func intialSetup(){
        iPasswordTextField.text=""
        iUserNameTextField.text=""
        iPasswordTextField.customWidth(width: 2)
        iPasswordTextField.customCornorRedius(redius: 10)
        iPasswordTextField.setLeftPadding()
        iUserNameTextField.customWidth(width: 2)
        iUserNameTextField.customCornorRedius(redius: 10)
        iUserNameTextField.setLeftPadding()
        iLoginBtn.customeCornerRadius(redius: 10)
        iLoginBtn.customeCornerRadius(redius: 10)
    }
    
    
}
