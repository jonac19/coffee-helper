//
//  Category.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/4/22.
//

import Foundation

struct Category: Codable {
    let name: String
    let drinks: [Drink]
}
