//
//  CategoryListView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/6/22.
//

import SwiftUI

struct CategoryListView: View {
    var group: Group
    
    var body: some View {
        List {
            ForEach(group.categories) { category in
                Section(header: Text(category.name)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.black)
                )
                {
                    ForEach(category.drinks) { drink in
                        NavigationLink(
                            drink.name, destination: DrinkView(drink: drink)
                        )
                    }
                }
                .textCase(nil)
                .id("ID " + category.name)
            }
        }
        .listStyle(InsetGroupedListStyle())
        .frame(height: .infinity)
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
