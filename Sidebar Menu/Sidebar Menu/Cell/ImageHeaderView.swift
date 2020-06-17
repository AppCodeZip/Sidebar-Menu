//
//  ImageHeaderCell.swift
//  Sidebar Menu
//
//  Created by Sushil Rathaur on 09/06/20.
//  Copyright © 2020 AppCodeZip. All rights reserved.
//

import UIKit

class ImageHeaderView : UIView {
    
    @IBOutlet weak var profileImage : UIImageView!
    @IBOutlet weak var backgroundImage : UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblDepart: UILabel!
    @IBOutlet weak var lblCompany: UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.profileImage.layoutIfNeeded()
        self.profileImage.layer.cornerRadius = self.profileImage.bounds.size.height / 2
        self.profileImage.clipsToBounds = true
        self.profileImage.layer.borderWidth = 1
        self.profileImage.layer.borderColor = UIColor.white.cgColor
        lblUserName.text = "Sushil Rathour"
        lblDepart.text = "www.appcodezip.com"
        lblCompany.text =  "AppCodeZip"
    }
}
