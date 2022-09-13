//
//  HomeViewController.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import UIKit


//enum
class HomeViewController: UIViewController {
    var selectedindex = -1
    var oldindex = -2
    var iscollapse = false
    
    
    
    var AppoinmentVc2 = AppoinmentViewModel()
    
    var state :StateOFTable = .isOpen
    
    var finalcliniclit : [ClinicDetail]? = nil
    var cliniclist : [ClinicDetail]? = nil
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    let activityindicatorr = UIActivityIndicatorView()
    
    @IBOutlet weak var ClinicListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    AppoinmentVc2.appoinmentdelegate = self
        
    navigationItem.hidesBackButton = true
     navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target:self, action: #selector(logOut))
//
     navigationItem.leftBarButtonItem?.setBackgroundImage(UIImage(named: "signout2"), for: .normal, barMetrics: .default)
//
//
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "", style: .plain, target:self, action: #selector(createAppoinment))
        
        navigationItem.rightBarButtonItem?.setBackgroundImage(UIImage(named: "addcircle"), for: .normal, barMetrics: .default)
//
//        self.navigationItem!.navigationBar.titleTextAttributes = [
//            .font: UIFont(name: "mplus-1c-regular", size: 5)!
//        ]
//

        self.ClinicListTableView.rowHeight = UITableView.automaticDimension
        self.ClinicListTableView.estimatedRowHeight = 200
        self.ClinicListTableView.layer.cornerRadius = 10
        
        ClinicListTableView.dataSource = self
        ClinicListTableView.delegate = self
        ClinicListTableView.register(UINib(nibName: "HomeViewControllerCell", bundle: nil), forCellReuseIdentifier: "HomeViewControllerCell")
        
        activityindicatorr.center = view.center
        activityindicatorr.color = .brown
        activityindicatorr.alpha = 1.0
        // view.addSubview(activityindicatorr)
        // activityindicatorr.stopAnimating()
        self.navigationController?.navigationBar.isTranslucent = true
        //self.edgesForExtendedLayout = UIRectEdgeNone.
        
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = date.dateFormatWithSuffix()
        
        var s1 : String = dateFormatter.string(from: date)

        print(s1)
        
           self.title = s1
        
        
        
        activityIndicator.hidesWhenStopped = true
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        // var loaderr =  showLoader()
        // stopLoader(loader: loaderr)
        HomeViewModel().getClinicListRecord { clinicrecord in
            
            DispatchQueue.main.async {
                self.activityIndicator.stopAnimating()
                
                if(clinicrecord != nil && clinicrecord?.count != 0){
                    self.cliniclist = clinicrecord!
                    self.finalcliniclit = self.cliniclist?.filter{ $0.isActive == true}
                    print(self.cliniclist?.count)
                    print(" final list count \(self.finalcliniclit?.count)")
                    self.ClinicListTableView.reloadData()
                }
            }
        }
    }
    
}


//TestCell
//TestCellExpanded

