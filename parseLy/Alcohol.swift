//
//  Alcohol.swift
//  parseLy
//
//  Created by Amelia Johnston on 1/3/16.
//  Copyright © 2016 Amelia. All rights reserved.
//

import Foundation

class Alcohol {
    var alcoholName: String?
    var alcoholRegretLevel: Double?
    
    init(alcoholName: String, alcoholRegretLevel: Double) {
        self.alcoholName = alcoholName
        self.alcoholRegretLevel = alcoholRegretLevel
    }
}
