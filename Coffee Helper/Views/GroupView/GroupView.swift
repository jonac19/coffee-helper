//
//  GroupView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/12/22.
//

import SwiftUI



struct GroupView: View {
    @State private var groupSelected: Groups = .coffee
    
    @EnvironmentObject var coffeeShopModel: CoffeeShopModel
    
    var body: some View {
        VStack {
            if groupSelected == .coffee {
                CategoryView(group: coffeeShopModel.groups[0])
            } else if groupSelected == .tea {
                CategoryView(group: coffeeShopModel.groups[1])
            } else if groupSelected == .smoothie {
                CategoryView(group: coffeeShopModel.groups[2])
            }

            GroupNavigationView(groupSelected: $groupSelected)
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
            .environmentObject(CoffeeShopModel())
    }
}
