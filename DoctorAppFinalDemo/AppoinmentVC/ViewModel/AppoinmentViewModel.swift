//
//  AppoinmentView.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 10/09/22.
//

import Foundation

protocol AppoinmentViewModelDelegate {
    
    func clinicListTableViewReloaddata()
}

class AppoinmentViewModel{
    

    var AppoinmentArray : [Appointment]? = nil
   
    var appoinmentdelegate : AppoinmentViewModelDelegate?
    //func getAppoinmentList(ClincId :Int,Date:String, DoctorId:Int
    func getAppoinmentList(){
        
        AppoinmentCoreDataManger().getAppoinmentListRecords { response in
            if(response != nil && response?.count != 0){
             //   self.AppoinmentArray = response
                
                self.AppoinmentArray = AppoinmentCoreDataManger().getAppoinmentListByClinic(id: 53)
                self.appoinmentdelegate?.clinicListTableViewReloaddata()
                print(self.AppoinmentArray)
            }
            else{
                
                let url = String(format: Constants.KURL.KStagingURL + Constants.KAPIPaths.KAPonmentUtl, 53,"2022-09-13T00:00:00.000Z",4,"Evening" )
                    
         //   https://api-stage.docterz.in/appointments?clinic=53&date=2022-09-13T00:00:00.000Z&doctor=4&schedule=Evening
                         //https://api-stage.docterz.in/appointments?clinic=53&date=2022-09-13T00:00:00.000Z&schedule=Evening
                
             //https://api-stage.docterz.in/appointments?clinic=53&date=2022-09-13T00:00:00.000Z&doctor=4&schedule=Evening
                print(url)
                
                    let Url = URL(string: url)
                
                    ApiServiceManager.sharedInstance.getApiData(requestUrl: Url!, resultType: AppoinmentApiResponse.self) {sucesfull,  result in
                        if let result = result {
                            var response = result.data?.appointments
                            
                            var flag1 : Bool =  AppoinmentCoreDataManger().insertAppoinmentListRecords(records: response!)
                           // AppoinmentArray =
                            
                            if  flag1 == true{
                                
                                self.AppoinmentArray = AppoinmentCoreDataManger().getAppoinmentListByClinic(id: 53)
                                self.appoinmentdelegate?.clinicListTableViewReloaddata()
                            }
                            
                            //self.AppoinmentArray = response
                            
                        }
            }
          
        }
    
  
        }
   
    
    }
    
    
    func fetchDatabyClinics(){
        
        
        
        
        
        
    }

    
    
    
    
    
    
    
    
    
    
    
}
