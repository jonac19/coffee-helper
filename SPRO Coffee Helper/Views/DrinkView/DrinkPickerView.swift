//
//  DrinkPickerView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/7/22.
//

import SwiftUI

struct DrinkPickerView: View {
    var drink: Drink
    @Binding var isHot: Bool
    @Binding var isRegular: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Picker("Temperature", selection: $isHot) {
                if !drink.properties.contains("Cold Only") {
                    Text("Hot").tag(true)
                }
                Text("Cold").tag(false)
                
            }
            .pickerStyle(.segmented)
            
            Picker("Size", selection: $isRegular) {
                if !drink.properties.contains("Large Only") {
                    Text("Regular").tag(true)
                }
                Text("Large").tag(false)
            }
            .pickerStyle(.segmented)
        }
        .padding()
    }
}

struct DrinkPickerView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView(drink: Drink.dummyDrink())
    }
}
