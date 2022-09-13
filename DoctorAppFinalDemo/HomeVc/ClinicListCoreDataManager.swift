//
//  ClinicListCoreDataManager.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//


import Foundation

class clinicListCoreDataManager{
    
    
    func insertClinicListRecords(records: [ClinicDetail]) -> Bool {
        debugPrint(" Insert record operation is starting")
        PersistentStorage.shared.persistentContainer.performBackgroundTask { privateManagedContext in
            records.forEach { clinicListRecord in
                let cdClinilist  = CDClinicDetail(context: privateManagedContext)
                
                cdClinilist.name = clinicListRecord.name
                cdClinilist.mobile = clinicListRecord.mobile
                cdClinilist.email = clinicListRecord.email
                cdClinilist.allowThirdPartyAccess = clinicListRecord.allowThirdPartyAccess ?? true
                cdClinilist.blockConfirmedApt = clinicListRecord.blockConfirmedApt ??  true
                cdClinilist.blockConfirmedAptMinutes = Int32(clinicListRecord.blockConfirmedAptMinutes!)
                cdClinilist.id = Int32(clinicListRecord.id ?? 5)
                cdClinilist.isActive = clinicListRecord.isActive ?? true
                cdClinilist.isComplete = clinicListRecord.isComplete!
                cdClinilist.enableOnSearch = clinicListRecord.enableOnSearch!
                cdClinilist.landline = clinicListRecord.landline
                cdClinilist.printFooterHgt = Int32(clinicListRecord.printHeaderHgt ?? 5)
                cdClinilist.printHeaderHgt = Int32(clinicListRecord.printHeaderHgt ?? 5)
                cdClinilist.shareDrugsAcrossClinic = clinicListRecord.shareDrugsAcrossClinic!
                cdClinilist.sharePrescriptionAcrossClinic = clinicListRecord.sharePrescriptionAcrossClinic!
                cdClinilist.shareMedicalHistoryAcrossClinic = clinicListRecord.shareMedicalHistoryAcrossClinic!
            }
            if(privateManagedContext.hasChanges){
                try? privateManagedContext.save()
                debugPrint(" Insert record operation is completed")
            }
        }
        
        return true
    }
    
    func getClinicListRecords(completionHandler: @escaping ([ClinicDetail]?) -> Void) {
        let result = PersistentStorage.shared.fetchManagedObject(managedObject: CDClinicDetail.self)
        var list : [ClinicDetail] = []
        
        result?.forEach({ (cdclinic) in
            list.append(cdclinic.convetToclinicDetail())
        })
        completionHandler(list)
    }
}
