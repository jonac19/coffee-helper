//
//  GroupNavigationBarView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/6/22.
//

import SwiftUI

struct GroupNavigationView: View {
    @Binding var groupSelected: String
    
    var body: some View {
        VStack {
            GroupSelectionIndicatorView(groupSelected: $groupSelected)
            
            HStack(alignment: .center, spacing: 40) {
                Button(action: {
                    groupSelected = "Coffee"
                }) {
                    Image("coffee_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45)
                }
                
                Divider()
                    .frame(height: 60)

                Button(action: {
                    groupSelected = "Tea"
                }) {
                    Image("tea_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45)
                }
                
                Divider()
                    .frame(height: 60)
                
                Button(action: {
                    groupSelected = "Smoothie"
                }) {
                    Image("smoothie_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45)
                }
            }
        }
    }
}

struct GroupNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        GroupNavigationBarPreView()
    }
    
    struct GroupNavigationBarPreView : View {
        @State var groupSelected: String = "Coffee"
        
        var body: some View {
            GroupNavigationView(groupSelected: $groupSelected)
        }
    }
}
