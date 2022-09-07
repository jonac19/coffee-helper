//
//  DrinkIngredientListView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/7/22.
//

import SwiftUI

struct DrinkIngredientListView: View {
    var drink: Drink
    var isHot: Bool
    var isRegular: Bool
    
    var body: some View {
        ScrollView(.vertical) {
            ForEach(drink.ingredients, id: \.name) { ingredient in
                HStack {
                    Text(ingredient.name)
                    Spacer()
                    if isHot {
                        if isRegular {
                            Text(ingredient.hotRegular)
                        } else {
                            Text(ingredient.hotLarge)
                        }
                    } else {
                        if isRegular {
                            Text(ingredient.coldRegular)
                        } else {
                            Text(ingredient.coldLarge)
                        }
                    }
                }
                .padding([.leading, .bottom, .trailing])
            }
        }
    }
}

struct DrinkIngredientListView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView(drink: Drink.dummyDrink())
    }
}
