//
//  DrinkView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/5/22.
//

import SwiftUI

struct DrinkView: View {
    var drink: Drink

    var body: some View {
        ScrollView(.vertical ) {
            VStack {
                Image(drink.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.red, lineWidth: 10)
                    )
                    .frame(height: 250)
                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text(drink.name)
                            .font(.system(size: 30, weight: .bold))
                        
                        Text(drink.type)
                    }.padding(20)
                    
                    ScrollView(.vertical) {
                        ForEach(drink.ingredients, id: \.name) { ingredient in
                            HStack {
                                Text(ingredient.name)
                                Spacer()
                                Text(ingredient.amount)
                            }.padding([.leading, .bottom, .trailing])
                        }
                    }
                }
            }
            .padding(.top, 30)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView(drink: Drink.dummyDrink())
    }
}
