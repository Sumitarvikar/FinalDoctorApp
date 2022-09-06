//
//  HomeViewController.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import UIKit


//enum
class Section {
    let title : String
    let options : [String]
    var isOpened : Bool = false
    
    init(title : String,
         option : [String],isOpened : Bool = false){
        self.title = title
        self.options = option
        self.isOpened = isOpened
        }
}
class HomeViewController: UIViewController {
   

   // var isopened:Bool = true
    
//    struct response {
//      let data = [Clinicdetails]
//
//
//    }
    var sections = [Section]()
    
    var finalcliniclit : [ClinicDetail]? = nil
    
    var cliniclist : [ClinicDetail]? = nil
    
    let list4 : [ClinicDetail]? = nil

    @IBOutlet weak var ClinicListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "LogOut", style: .plain, target:self, action: #selector(logOut))
        
        sections = [Section(title: "one", option: [1,2,3].compactMap({ return "cell \($0)"
        })),Section(title: "two", option: [1,2,3].compactMap({ return "cell \($0)"
        })),Section(title: "three", option: [1,2,3].compactMap({ return "cell \($0)"
        })),Section(title: "four", option: [1,2,3].compactMap({ return "cell \($0)"
        }))]
        
    // let loader = self.showLoader()
        
        
        
        self.ClinicListTableView.layer.cornerRadius = 10
        
        ClinicListTableView.dataSource = self
        ClinicListTableView.delegate = self
        ClinicListTableView.register(UINib(nibName: "HomeVCCell", bundle: nil), forCellReuseIdentifier: "HomeVCCell")

        
        HomeViewModel().getClinicListRecord { clinicrecord in
        //    loader.dismiss(animated: true)
            DispatchQueue.main.async {
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


extension HomeViewController : UITableViewDataSource , UITableViewDelegate {
    

    
   // nummberofsection
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        let section = sections[section]
//
//
//        if section.isOpened {
//
//            return section.options.count
//        }
//        else{
//            return 1
//        }
        print("final Clinic list \(finalcliniclit?.count)")
        print(" Clinic list \(cliniclist?.count)")
        return finalcliniclit?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ClinicListTableView.dequeueReusableCell(withIdentifier: "HomeVCCell", for: indexPath) as! HomeVCCell
        
       // if let cell ==
        let clinic = self.finalcliniclit![indexPath.row]

//        if let clinic = clinic {
//
//
//
//        }
        
        
        cell.clinicName.text = clinic.name
//        cell.label.text = clinic.mobile
//        let clinic
        
//        if indexPath.row == 0{
//
//            cell.clinicName.text = sections[indexPath.section].title
//
//        }
//        else{
//            cell.clinicName.text = sections[indexPath.section].options[indexPath.row - 1]
//
//        }
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//       // let section = sections[section]
//
//
//        return cliniclist?.count ?? 0
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)
        sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
        
        ClinicListTableView.reloadSections([indexPath.section], with: .none)
        
    }

    
    @objc func logOut(){
        
        showAlert(title: "Logut", message: "Do you Want to Logout ?", firstActionTitle: "Yes", secondActionTitle: "Cancel", alertStyle: .alert, firstActionStyle: .default, secondActionStyle: .cancel, firstActionHandler: { action in
           // let vc = LoginViewController()
            self.navigationController?.popViewController(animated: true)
            
        }, secondActionHandler: nil)
        
        
            }
    
    
    
    
}
