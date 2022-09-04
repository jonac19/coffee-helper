//
//  Ingredient.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/4/22.
//

import Foundation

struct Ingredient: Codable {
    let name: String
    let hotRegular: String
    let hotLarge: String
    let coldRegular: String
    let coldLarge: String
    
    static func dummyIngredient() -> Ingredient {
        return Ingredient(name: "Ingredient Name", hotRegular: "Hot Regular Amount", hotLarge: "Hot Large Amount", coldRegular: "Cold Regular Amount", coldLarge: "Cold Large Amount")
    }
}
