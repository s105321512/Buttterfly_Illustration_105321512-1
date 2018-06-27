//
//  location.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/6/26.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import Foundation

class Location_data {
    var lat: String
    var lon: String
    
    init(lat: String, lon:String){
        self.lat = lat
        self.lon = lon
    }
    
    convenience init(){
        self.init(lat:"", lon:"")
    }
    
}
