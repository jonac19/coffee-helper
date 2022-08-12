//
//  Category.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/4/22.
//

import Foundation

struct Category: Codable, Identifiable, Hashable, Equatable {
    var id: String{name}
    let name: String
    let drinks: [Drink]
    
    enum CodingKeys: String, CodingKey {
        case name
        case drinks
    }
    
    func hash(into hasher: inout Hasher) {
      hasher.combine(id)
    }
    
    static func == (lhs: Category, rhs: Category) -> Bool {
        return lhs.id == rhs.id
    }
}
