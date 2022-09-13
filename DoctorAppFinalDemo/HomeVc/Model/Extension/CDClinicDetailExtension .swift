//
//  CDClinicDetailEctension .swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 05/09/22.
//

import Foundation


extension CDClinicDetail{
    
    func convetToclinicDetail() -> ClinicDetail {
        return ClinicDetail.init(id: Int(self.id), name: self.name!, printHeaderHgt: Int(self.printHeaderHgt), printFooterHgt: Int(self.printFooterHgt), landline: self.landline ?? "0", isComplete: self.isComplete, enableOnSearch: self.enableOnSearch, email: self.email ?? "0", mobile: self.mobile ?? "",  shareDrugsAcrossClinic: self.shareDrugsAcrossClinic, allowThirdPartyAccess: self.allowThirdPartyAccess, blockConfirmedApt: self.blockConfirmedApt, sharePrescriptionAcrossClinic: self.sharePrescriptionAcrossClinic, blockConfirmedAptMinutes: Int(self.blockConfirmedAptMinutes), shareMedicalHistoryAcrossClinic: self.shareMedicalHistoryAcrossClinic, isActive: self.isActive)
    }
    
    
}
