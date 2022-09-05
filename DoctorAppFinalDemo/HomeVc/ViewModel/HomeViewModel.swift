//
//  HomeViewModel.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import Foundation

struct HomeViewModel{
func getClinicListRecord( completionHandler:@escaping(_ result: Array<ClinicDetail>?)-> Void) {
    
    
//    clinicListCoreSataManager().getClinicListRecords { response in
//        if(response != nil && response?.count != 0){
//            // return response to the view controller
//            completionHandler(response)
//        }else {
    
    
    
        DataServiceManager.shared.getclinicdetails(){
            (response) in
            completionHandler(response as? Array<ClinicDetail>)
            }
    }
}
//}
//}
