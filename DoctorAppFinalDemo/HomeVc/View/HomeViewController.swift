//
//  HomeViewController.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import UIKit

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
    
    
    
    var cliniclist : Array<CDClinicDetail>? = nil

    @IBOutlet weak var ClinicListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sections = [Section(title: "one", option: [1,2,3].compactMap({ return "cell \($0)"
        })),Section(title: "two", option: [1,2,3].compactMap({ return "cell \($0)"
        })),Section(title: "three", option: [1,2,3].compactMap({ return "cell \($0)"
        })),Section(title: "four", option: [1,2,3].compactMap({ return "cell \($0)"
        }))]
        
    //   let loader = self.showLoader()
        
        self.ClinicListTableView.layer.cornerRadius = 10
        
        ClinicListTableView.dataSource = self
        ClinicListTableView.delegate = self
        ClinicListTableView.register(UINib(nibName: "HomeVCCell", bundle: nil), forCellReuseIdentifier: "HomeVCCell")

        
        HomeViewModel().getClinicListRecord { clinicrecord in
         DispatchQueue.main.async {
                if(clinicrecord != nil && clinicrecord?.count != 0){
                    self.cliniclist = clinicrecord as! Array<CDClinicDetail>
                    self.ClinicListTableView.reloadData()
                }
             
        }
          //  loader.dismiss(animated: true)
        
        

    }

}
}

extension HomeViewController : UITableViewDataSource , UITableViewDelegate {
    

    
   // nummberofsection
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let section = sections[section]
        
        
        if section.isOpened {
            
            return section.options.count
        }
        else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ClinicListTableView.dequeueReusableCell(withIdentifier: "HomeVCCell", for: indexPath) as! HomeVCCell
        
     //   if let cell ==
//        let clinic = self.cliniclist![indexPath.row]
//
//        cell.Name.text = clinic.name
//        cell.label.text = clinic.mobile
       // let clinic
        
        if indexPath.row == 0{
            
            cell.clinicName.text = sections[indexPath.section].title
            
        }
        else{
            cell.clinicName.text = sections[indexPath.section].options[indexPath.row - 1]
            
        }
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
       // let section = sections[section]
        
        
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)
        sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
        
        ClinicListTableView.reloadSections([indexPath.section], with: .none)
        
    }

    
    
    
    
    
    
}
