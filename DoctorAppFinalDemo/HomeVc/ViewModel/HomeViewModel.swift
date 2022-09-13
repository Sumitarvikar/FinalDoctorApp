//
//  HomeViewModel.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import Foundation




struct HomeViewModel{
    
    private var clinicCoredataManager =  clinicListCoreDataManager()
    func getClinicListRecord( completionHandler:@escaping(_ result: [ClinicDetail]?)-> Void) {
        
        clinicCoredataManager.getClinicListRecords { response in
            if ( response != nil && response?.count != 0){
                completionHandler(response)
            }
            else{
                let url = URL(string: "\(Constants.KURL.KStagingURL)\(Constants.KAPIPaths.KClinicList)")!
                ApiServiceManager.sharedInstance.getApiData(requestUrl: url, resultType: ClinicResponse.self){sucessfull, result in
                    if let result = result {
                        let response = result.clinicDetails
                        _ = clinicCoredataManager.insertClinicListRecords(records: response!)
                        completionHandler(response)
                    }
                }
                
            }}
    }
}
