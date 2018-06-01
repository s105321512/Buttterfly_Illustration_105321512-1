//
//  List_TableViewCell.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/4/23.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import UIKit


class List_TableViewCell: UITableViewCell {

    @IBOutlet var butterfly_name: UILabel!
    @IBOutlet var cientific_name: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
//    @IBOutlet var location_name: UILabel!
//    @IBOutlet var ecological: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
