//
//  GroupView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/12/22.
//

import SwiftUI

struct GroupView: View {
    var drinksModel: DrinksModel
    @State private var groupSelection: String = "Coffee"
    
    var body: some View {
        VStack {
            if groupSelection == "Coffee" {
                CategoryView(drinksModel: drinksModel)
            } else {
                Text("Tadaa")
            }
            
            // Bottom navbar
            HStack(alignment: .center, spacing: 30) {
                Button(action: {
                    groupSelection = "Coffee"
                }) {
                    Image("coffee_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45)
                }
                
                Divider()
                    .frame(height: 60)

                Button(action: {
                    groupSelection = "Tea"
                }) {
                    Image("tea_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45)
                }
                
                Divider()
                    .frame(height: 60)
                
                Button(action: {
                    groupSelection = "Food"
                }) {
                    Image("food_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45)
                }

                Divider()
                    .frame(height: 60)
                
                Button(action: {
                    groupSelection = "Batch Brew"
                }) {
                    Image("coffee_bag_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45)
                }
            }
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView(drinksModel: DrinksModel())
    }
}
