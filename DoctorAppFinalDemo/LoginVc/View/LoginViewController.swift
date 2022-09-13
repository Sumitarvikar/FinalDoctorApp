//
//  ViewController.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//



import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var iUserNameTextField: UITextField!
    @IBOutlet weak var iPasswordTextField: UITextField!
    @IBOutlet weak var iLoginBtn: UIButton!
    @IBOutlet weak var iLoader: UIActivityIndicatorView!
    var loginVM = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(showVerificationOtpAlert), name: .addVerifyAlert, object: nil)
        //  view.backgroundColor = Constants.KColor.AppThemeColor
        intialSetup()
        loginVM.delegate = self
        iLoader.isHidden = true
    }
    
    @IBAction func LoginButtonClicked(_ sender: Any) {
         loginVM.loginUser(username: "josh_doctor", password: "josh123")
       // loginVM.loginUser(username: iUserNameTextField.text ?? "" , password: iPasswordTextField.text ?? "")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        iUserNameTextField.text = ""
        iPasswordTextField.text = ""
    }
}


