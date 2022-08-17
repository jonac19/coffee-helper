//
//  CategoryView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/11/22.
//

import SwiftUI

struct CategoryView: View {
    var drinksModel: DrinksModel
    @State private var visibleCategories: Set<Category>
    
    init(drinksModel: DrinksModel) {
        visibleCategories = Set(drinksModel.categories)
        self.drinksModel = drinksModel
    }
    
    var body: some View {
        NavigationView {
            VStack (spacing: 0) {
                // Category navbar
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 25) {
                        ForEach(drinksModel.categories) { category in
                            Button(category.name) {
                                if visibleCategories.contains(category) {
                                    visibleCategories.remove(category)
                                } else {
                                    visibleCategories.insert(category)
                                }
                            }.foregroundColor(.white)
                            
                        }
                    }
                    .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                }
                .background(Color(red: 0.60, green: 0, blue: 0))
                
                // Category list
                List {
                    ForEach(drinksModel.categories) { category in
                        if visibleCategories.contains(category) {
                            Section(header: Text(category.name)) {
                                ForEach(category.drinks) { drink in
                                    NavigationLink(
                                        drink.name, destination: DrinkView(drink: drink)
                                    )
                                }
                            }
                        }
                    }
                }
                .frame(height: .infinity)
            }
            .navigationBarTitle("Back", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(drinksModel: DrinksModel())
    }
}
