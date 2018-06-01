//
//  ButterflyDetailTextCell.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/5/30.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import UIKit

class ButterflyDetailTextCell: UITableViewCell {

    
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.numberOfLines = 0
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
