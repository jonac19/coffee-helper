//
//  ContentView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/3/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var coffeeShopViewModel: CoffeeShopViewModel = CoffeeShopViewModel()

    @State private var isSearching: Bool = false

    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    GlobalNavigationView(isSearching: $isSearching)

                    GroupView()
                        .navigationBarTitle("Back", displayMode: .inline)
                        .navigationBarHidden(true)
                }
            }
            
            if isSearching {
                GlobalSearchView(isSearching: $isSearching)
            }
        }
        .environmentObject(self.coffeeShopViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
