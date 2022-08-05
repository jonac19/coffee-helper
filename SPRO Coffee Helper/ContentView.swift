//
//  ContentView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/3/22.
//

import SwiftUI

struct ContentView: View {
    var drinksModel: DrinksModel = DrinksModel()

    var body: some View {
        VStack {
            HStack {
                Text("SPRO Coffee Helper")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Color.red)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 25) {
                    ForEach(drinksModel.categories, id: \.name) { category in
                        Text(category.name)
                    }
                }.padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            
            List {
                ForEach(drinksModel.categories, id: \.name) { category in
                    Section(header: Text(category.name)) {
                        ForEach(category.drinks, id: \.name) { drink in
                            Text(drink.name)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
