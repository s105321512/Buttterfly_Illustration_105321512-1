//
//  ButterflyDetaillconTextCell.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/5/30.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import UIKit

class ButterflyDetaillconTextCell: UITableViewCell {

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var shortTextLabel: UILabel!{
        didSet {
            shortTextLabel.numberOfLines = 0 //multiple lines
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
