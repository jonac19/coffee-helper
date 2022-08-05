//
//  Ingredient.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/4/22.
//

import Foundation

struct Ingredient: Codable {
    let name: String
    let amount: String
    
    static func dummyIngredient() -> Ingredient {
        return Ingredient(name: "Ingredient Name", amount: "Ingredient Amount")
    }
}
