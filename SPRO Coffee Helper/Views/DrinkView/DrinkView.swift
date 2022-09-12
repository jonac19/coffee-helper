//
//  DrinkView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/5/22.
//

import SwiftUI

struct DrinkView: View {
    let drink: Drink
    
    @State var isHot: Bool
    @State var isRegular: Bool
    
    init(drink: Drink) {
        self.drink = drink
        self.isHot = !drink.properties.contains("Cold Only")
        self.isRegular = !drink.properties.contains("Large Only")
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(red: 0.93, green: 0.00, blue: 0.02, alpha: 1.00)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }

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
                    
                    DrinkPickerView(drink: drink, isHot: $isHot, isRegular: $isRegular)
                    
                    DrinkIngredientListView(drink: drink, isHot: isHot, isRegular: isRegular)
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
