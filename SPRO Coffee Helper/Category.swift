//
//  Category.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/4/22.
//

import Foundation

class Category: Codable {
    var hidden: Bool = false
    let name: String
    let drinks: [Drink]
    
    enum CodingKeys: String, CodingKey {
        case name
        case drinks
    }
}
