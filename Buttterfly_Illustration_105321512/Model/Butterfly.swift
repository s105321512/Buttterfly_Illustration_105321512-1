//
//  Butterfly.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/5/29.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import Foundation

class Butterfly {
    var name: String
    var cientific: String
    var image: String
    var location: String
    var description: String
    var ecological: String
    
    init(name: String, cientific: String, image: String, location: String, description: String, ecological: String) {
        self.name = name
        self.cientific = cientific
        self.image = image
        self.location = location
        self.description = description
        self.ecological = ecological
    }
    
    convenience init() {
        self.init(name: "", cientific: "", image: "", location: "", description:"", ecological:"")
    }
}


