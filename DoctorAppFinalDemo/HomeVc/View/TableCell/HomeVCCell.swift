//
//  HomeVCCell.swift
//  DoctorAppFinalDemo
//
//  Created by Josh on 04/09/22.
//

import UIKit

class HomeVCCell: UITableViewCell {
    
    @IBOutlet weak var homeVcCellView: UIView!
    @IBOutlet weak var clinicName: UILabel!
    @IBOutlet weak var homeVcImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.homeVcImage.layer.cornerRadius = 20
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

