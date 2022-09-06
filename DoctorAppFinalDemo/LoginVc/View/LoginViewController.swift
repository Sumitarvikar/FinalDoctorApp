//
//  ViewController.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import UIKit

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var iUserNameTextField: UITextField!
    @IBOutlet weak var iPasswordTextField: UITextField!
    @IBOutlet weak var iLoginBtn: UIButton!
    var loginVM = LoginViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  view.backgroundColor = Constants.KColor.AppThemeColor
       
        intialSetup()
        
        loginVM.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginButtonClicked(_ sender: Any) {

        loginVM.loginUser(username: "sumit.arvikar@joshsoftware.come", password: "2319")

    }
}


