//
//  HomeViewControllerCell.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 07/09/22.
//

import UIKit

class HomeViewControllerCell: UITableViewCell {
    
    @IBOutlet weak var heightBetweenlblandCell: NSLayoutConstraint!
   
    var Appoinmentlist : [Appointment]?
    
    @IBOutlet weak var clinicNameLbl: UILabel!
   
    @IBOutlet weak var patienttableView: UIView!
    
    @IBOutlet weak var clinicInformationView: UITextField!
    
    @IBOutlet weak var labelBackgroudView: UIView!
    @IBOutlet weak var arrowImg: UIImageView!
    
    @IBOutlet weak var patientNameTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.clinicNameLbl.backgroundColor = Constants.KColor.ClinicCellColor
        patientNameTableView.delegate = self
        patientNameTableView.dataSource = self
        self.clinicNameLbl.layer.masksToBounds = true
        self.clinicNameLbl.layer.cornerRadius = 10
        self.patientNameTableView.backgroundColor = Constants.KColor.PatientTableColor
        self.patienttableView.layer.borderColor = Constants.KColor.PatientTableColor.cgColor
        self.patienttableView.layer.cornerRadius = 10
        self.patienttableView.layer.masksToBounds = true
        
      
        let apptModel = AppoinmentViewModel()
        apptModel.getAppoinmentList()
//        apptModel.AppoinmentArray
        
        let apptModel2 = AppoinmentViewModel()
        
        
        patientNameTableView.register(UINib(nibName: "PatientDetailsViewCell", bundle: nil), forCellReuseIdentifier: "PatientDetailsViewCell")
    }
    
    func refresh(apptArray : [Appointment]?){
        self.Appoinmentlist = apptArray
        self.patientNameTableView.reloadData()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
extension HomeViewControllerCell: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Appoinmentlist?.count ?? 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = patientNameTableView.dequeueReusableCell(withIdentifier: "PatientDetailsViewCell", for: indexPath) as! PatientDetailsViewCell
        
        
        
        
        if let appoimentres = Appoinmentlist{
            
            var appoinment = appoimentres[indexPath.row]
            cell.patientName.text = appoinment.name
            cell.patientAge.text = appoinment.age
            cell.PhoneNo.text = appoinment.mobile
            
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 53
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
