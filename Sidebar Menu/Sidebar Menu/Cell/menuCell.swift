//
//  menuCell.swift
//  Sidebar Menu
//
//  Created by Sushil Rathaur on 09/06/20.
//  Copyright © 2020 AppCodeZip. All rights reserved.
//

import UIKit

class menuCell: UITableViewCell {
    
    @IBOutlet weak var imgMenu: UIImageView!
    @IBOutlet weak var txtMenu: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setData(_ data:[String:AnyObject] ) {
        if let cellTxt = data["txtMenu"] as? String
        {
            self.txtMenu.text = cellTxt

        }
        if let cellImg = data["imgMenu"] as? String
        {
            self.imgMenu.image = UIImage(named: cellImg)

        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
