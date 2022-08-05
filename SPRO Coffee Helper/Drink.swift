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
    
    static func dummyDrink() -> Drink {
        var dummyIngredients = [Ingredient]()
        for _ in 1...2 {
            dummyIngredients.append(Ingredient.dummyIngredient())
        }
        return Drink(name: "Drink Name", type: "Drink Type", ingredients: dummyIngredients)
    }
}
