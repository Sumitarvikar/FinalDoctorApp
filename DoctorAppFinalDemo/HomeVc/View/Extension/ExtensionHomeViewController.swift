//
//  ExtensionHomeViewController.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 06/09/22.
//

import Foundation
import UIKit

enum StateOFTable{
    case isOpen
    case iscollapse
}

extension HomeViewController : UITableViewDataSource , UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print("final Clinic list \(finalcliniclit?.count)")
        print(" Clinic list \(cliniclist?.count)")
        return finalcliniclit?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ClinicListTableView.dequeueReusableCell(withIdentifier: "HomeViewControllerCell", for: indexPath) as! HomeViewControllerCell
        
                 
        let clinic = self.finalcliniclit![indexPath.row]
        cell.clinicNameLbl.text = clinic.name
        cell.arrowImg.image = UIImage(systemName: "chevron.down")
        
       
        cell.refresh(apptArray: AppoinmentVc2.AppoinmentArray)
        
        
        if state == .iscollapse {
          //  if selectedindex == indexPath.row {

           
           if selectedindex == indexPath.row{
            cell.arrowImg.image = UIImage(systemName: "chevron.up")
            //cell.patientNameTableView.isHidden = true
            
        }
        else{
            cell.arrowImg.image = UIImage(systemName: "chevron.down")
            // cell.patientNameTableView.isHidden = false
            
        }
       }
        return cell
    }
//    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 90; // space b/w cells
//    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if selectedindex == indexPath.row && state == .iscollapse {
            return 466
        }
        else{
            return 117
        }
    }
    
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        //        if selectedindex == indexPath.row{
        //            if self.iscollapse == true{
        //                self.iscollapse = false
        //            }
        //            else{
        //                self.iscollapse = true
        //            }
        //        }
        
       
        
        
        selectedindex = indexPath.row

        if selectedindex == indexPath.row{
            switch state{
                
                
            case .isOpen:
                AppoinmentVc2.getAppoinmentList()
                state = .iscollapse
            case .iscollapse:
           //      AppoinmentVc2.getAppoinmentList()
                state = .isOpen
            }
        }
//        else{
//
//
//            state = .iscollapse
//        }
        
        selectedindex = indexPath.row
        ClinicListTableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    @objc func logOut(){
        
        showAlert(title: "Logut", message: "Do you Want to Logout ?", firstActionTitle: "Yes", secondActionTitle: "Cancel", alertStyle: .alert, firstActionStyle: .default, secondActionStyle: .cancel, firstActionHandler: { action in
            // let vc = LoginViewController()
            self.navigationController?.popViewController(animated: true)
        }, secondActionHandler: nil)
    }
    
    @objc func createAppoinment(){
        
        showAlert(title: "Logut", message: "Do you Want to Logout ?", firstActionTitle: "Yes", secondActionTitle: "Cancel", alertStyle: .alert, firstActionStyle: .default, secondActionStyle: .cancel, firstActionHandler: { action in
            // let vc = LoginViewController()
            self.navigationController?.popViewController(animated: true)
        }, secondActionHandler: nil)
    }
}


extension HomeViewController : AppoinmentViewModelDelegate{
    func clinicListTableViewReloaddata() {
        UIView.performWithoutAnimation {
            self.ClinicListTableView.reloadData()
          }
    }
}
