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
        VStack {
            Rectangle()
                .ignoresSafeArea()
                .frame(height: 10)
                .foregroundColor(Color(red: 0.93, green: 0.00, blue: 0.02))
            ScrollView(.vertical ) {
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(drink.name)
                                .font(.system(size: 30, weight: .bold))
                            
                            Text(drink.type)
                        }
                        .padding(.leading, 20)
                        
                        Spacer()
                    }

                    Image(drink.img)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color(red: 0.93, green: 0.00, blue: 0.02), lineWidth: 10)
                        )
                        .frame(height: 300)
                        .padding([.top, .bottom], 20)
                    
                    VStack {
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
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView(drink: Drink.dummyDrink())
    }
}
