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
            
            GroupView(drinksModel: drinksModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
