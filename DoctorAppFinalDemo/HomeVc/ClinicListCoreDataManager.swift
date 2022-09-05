//
//  ClinicListCoreDataManager.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//


import Foundation

class clinicListCoreSataManager{
    
    
    func insertClinicListRecords(records: Array<CDClinicDetail>) -> Bool {
        debugPrint(" Insert record operation is starting")
        PersistentStorage.shared.persistentContainer.performBackgroundTask { privateManagedContext in
            records.forEach { clinicListRecord in
                let cdClinilist  = CDClinicDetail(context: privateManagedContext)
                
                cdClinilist.name = clinicListRecord.name
                cdClinilist.isActive = clinicListRecord.isActive
            }
            if(privateManagedContext.hasChanges){
                try? privateManagedContext.save()
                debugPrint(" Insert record operation is completed")
            }
        }
        
        return true
    }
    
    func getClinicListRecords(completionHandler: @escaping (Array<CDClinicDetail>?) -> Void) {
        let result = PersistentStorage.shared.fetchManagedObject(managedObject: CDClinicDetail.self)
        
        
        
        var list : Array<CDClinicDetail> = []
        result?.forEach({ (cdclinic) in
            list.append(cdclinic)
        })
        
        completionHandler(list)
    }
}
