//
//  GlobalSearchListView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/9/22.
//

import SwiftUI

struct GlobalSearchListView: View {
    @Binding var searchText: String
    
    @EnvironmentObject var coffeeShopModel: CoffeeShopModel
    
    var body: some View {
        let searchResult: [Drink] = getSearchResult(searchText: searchText)
        
        List {
            ForEach(searchResult) { drink in
                NavigationLink(
                    drink.name, destination: DrinkView(drink: drink)
                )
            }
        }
    }
    
    func getSearchResult(searchText: String) -> [Drink] {
        var searchResult: [Drink] = [Drink]()
        
        for group in coffeeShopModel.groups {
            for category in group.categories {
                for drink in category.drinks {
                    if drink.name.lowercased().contains(searchText.lowercased()) {
                        searchResult.append(drink)
                    }
                }
            }
        }
        
        return searchResult
    }
}

struct GlobalSearchListView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalSearchView(isSearching: Binding.constant(true))
            .environmentObject(CoffeeShopModel())
    }
}
