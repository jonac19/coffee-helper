//
//  ContentView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/3/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var drinksModel: DrinksModel = DrinksModel()

    var body: some View {
        VStack {
            // Top navbar
            HStack {
                Image("spro_logo_clear")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                Spacer()
                Image("search_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45)
            }
            .padding([.leading, .trailing], 20)

            NavigationView {
                VStack {
                    // Category navbar
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 25) {
                            ForEach($drinksModel.categories, id: \.name) { $category in
                                Text(category.name)
                                    .foregroundColor(.white)
                            }
                        }.padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    }
                    .background(Color(red: 0.60, green: 0, blue: 0))
                    
                    // Category list
                    List {
                        ForEach(drinksModel.categories, id: \.name) { category in
                            if !category.hidden {
                                Section(header: Text(category.name)) {
                                    ForEach(category.drinks, id: \.name) { drink in
                                        NavigationLink(
                                            drink.name, destination: DrinkView(drink: drink)
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
                .navigationBarTitle("Back", displayMode: .inline)
                .navigationBarHidden(true)
            }
            
            // Bottom navbar
            HStack(alignment: .center, spacing: 30) {
                Image("coffee_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 45)
                Divider()
                    .frame(height: 60)
                Image("tea_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 45)
                Divider()
                    .frame(height: 60)
                Image("food_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 45)
                Divider()
                    .frame(height: 60)
                Image("coffee_bag_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 45)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
