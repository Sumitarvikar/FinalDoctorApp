//
//  PatientDetailsViewCell.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 07/09/22.
//

import UIKit

class PatientDetailsViewCell: UITableViewCell {
    
    @IBOutlet weak var patientName: UILabel!
    @IBOutlet weak var PhoneNo: UILabel!
    @IBOutlet weak var patientAge: UILabel!
    
    @IBOutlet weak var patientDetaillCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.patientDetaillCell.layer.borderWidth = 1
        self.patientDetaillCell.layer.masksToBounds = true
        //  self.patientDetaillCell.layer.borderWidth = 1
        self.patientDetaillCell.layer.borderColor = Constants.KColor.PatienCellBoarderColor.cgColor
        self.patientDetaillCell.layer.cornerRadius = 5
        
        self.contentView.backgroundColor = Constants.KColor.PatientTableColor
        
       
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
