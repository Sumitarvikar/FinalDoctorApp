//
//  HomeViewModel.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import Foundation

struct HomeViewModel{
func getClinicListRecord( completionHandler:@escaping(_ result: [ClinicDetail]?)-> Void) {
    
    clinicListCoreSataManager().getClinicListRecords { response in
        if ( response != nil && response?.count != 0){
            completionHandler(response)
        }
    }
    DataServiceManager.shared.getclinicdetails(){
            response in
            completionHandler(response)
            
        clinicListCoreSataManager().insertClinicListRecords(records: response!)
            }
    }
}
//}
//}
