//
//  childPatientTableViewCell.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 13/09/22.
//

import UIKit

class childPatientTableViewCell: UITableViewCell {
    
    @IBOutlet weak var childPatientInformationcell: UIView!
    @IBOutlet weak var childPatientname: UILabel!
    @IBOutlet weak var childWeight: UILabel!
    @IBOutlet weak var childPatientAge: UILabel!
    @IBOutlet weak var childPatientNote: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.childPatientInformationcell.layer.borderWidth = 1
        self.childPatientInformationcell.layer.masksToBounds = true
        //  self.patientDetaillCell.layer.borderWidth = 1
        self.childPatientInformationcell.layer.borderColor = Constants.KColor.PatienCellBoarderColor.cgColor
        self.childPatientInformationcell.layer.cornerRadius = 5
        
        self.contentView.backgroundColor = Constants.KColor.PatientTableColor
        
        
        childPatientNote.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
