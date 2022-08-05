//
//  Drink.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/4/22.
//

import Foundation

struct Drink: Codable {
    let name: String
    let type: String
    let ingredients: [Ingredient]
}
