//
//  GlobalSearchListView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/9/22.
//

import SwiftUI

struct GlobalSearchListView: View {
    @Binding var searchText: String
    
    @EnvironmentObject var sproModel: SproModel
    
    var body: some View {
        let searchResult: [Drink] = getSearchResult(searchText: searchText)
        
        List {
            ForEach(searchResult) { drink in
                NavigationLink(
                    drink.name, destination: DrinkView(drink: drink)
                )
            }
        }

//        VStack {
//            Text("Under Construction")
//                .padding()
//                .font(.system(size: 30))
//            Image(systemName: "xmark")
//                .resizable()
//                .scaledToFit()
//                .frame(height: 100)
//        }
    }
    
    func getSearchResult(searchText: String) -> [Drink] {
        var searchResult: [Drink] = [Drink]()
        
        for group in sproModel.groups {
            for category in group.categories {
                for drink in category.drinks {
                    if drink.name.contains(searchText) {
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
            .environmentObject(SproModel())
    }
}
