//
//  Drink.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/4/22.
//

import Foundation

struct Drink: Codable, Identifiable {
    var id: String{name}
    let name: String
    let type: String
    let img: String
    let properties: [String]
    let ingredients: [Ingredient]
    
    enum CodingKeys: String, CodingKey {
        case name
        case type
        case img
        case properties
        case ingredients
    }
    
    static func dummyDrink() -> Drink {
        var dummyIngredients = [Ingredient]()
        for _ in 1...2 {
            dummyIngredients.append(Ingredient.dummyIngredient())
        }
        return Drink(name: "Drink Name", type: "Drink Type", img: "coffee_img", properties: ["Cold Only"], ingredients: dummyIngredients)
    }
}
