//
//  AppoinmentCoreDataManager.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 11/09/22.
//

import Foundation
import CoreData

struct AppoinmentCoreDataManger{
    
    
    func insertAppoinmentListRecords(records: [Appointment]) -> Bool {
        debugPrint(" Insert record operation is starting")
        PersistentStorage.shared.persistentContainer.performBackgroundTask { privateManagedContext in
            records.forEach { appoinmentDetails in
                
                
                let cdApoinmentList = CDAppoinmentDetails(context: privateManagedContext)
                
                cdApoinmentList.id = Int32(appoinmentDetails.id!)
                cdApoinmentList.clinicID = Int32(appoinmentDetails.clinicID!)
                cdApoinmentList.doctorID = Int32(appoinmentDetails.doctorID!)
                cdApoinmentList.name     = appoinmentDetails.name
                cdApoinmentList.gender   = appoinmentDetails.gender
                cdApoinmentList.age      = appoinmentDetails.age
                cdApoinmentList.mobile   = appoinmentDetails.mobile
                cdApoinmentList.weight     = Int32(appoinmentDetails.weight ?? 0)
            if(privateManagedContext.hasChanges){
                try? privateManagedContext.save()
                debugPrint(" Insert record operation is completed")
            }
        }
        }
        
        return true
    }
    
    
    func getAppoinmentListRecords(completionHandler: @escaping ([Appointment]?) -> Void) {
        let result = PersistentStorage.shared.fetchManagedObject(managedObject: CDAppoinmentDetails.self)
        var appoinmentlist : [Appointment] = []
        
        result?.forEach({ (cdApoinment) in
            appoinmentlist.append(cdApoinment.convertToAppoinmentDetails())
        })
        completionHandler(appoinmentlist)
    }
    
    
    
    func create(appoinment : Appointment) {
        
        let cdappoinment = CDAppoinmentDetails(context: PersistentStorage.shared.context)
        cdappoinment.id = Int32( appoinment.id!)
        cdappoinment.name = appoinment.name
        cdappoinment.age = appoinment.age
        cdappoinment.clinicID = Int32(appoinment.clinicID ?? 0)
        cdappoinment.doctorID = Int32(appoinment.doctorID ?? 0)
        cdappoinment.date =  " "
        cdappoinment.mobile = appoinment.mobile
        
        
        
        PersistentStorage.shared.saveContext()
        
        
    }
    
    func getAppoinmentListByClinic(id : Int)-> [Appointment]?{
        var appoinmentlistByClinic : [Appointment] = []
        let clinicid = Int32(id)
        let fetchRequest = NSFetchRequest<CDAppoinmentDetails>(entityName: "CDAppoinmentDetails")
        let predicate = NSPredicate(format: "clinicID==%i", id)
        
        fetchRequest.predicate = predicate
        do {
            let result = try PersistentStorage.shared.context.fetch(fetchRequest)
            
            guard result != nil else {return nil}
            result.forEach({ (cdApoinment) in
                appoinmentlistByClinic.append(cdApoinment.convertToAppoinmentDetails())
            })
            
            return appoinmentlistByClinic
            
        } catch let error {
            debugPrint(error)
        }
        
        return nil
    }
    
    
    
}












