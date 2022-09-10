//
//  GroupNavigationBarView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/6/22.
//

import SwiftUI

struct GroupNavigationView: View {
    @Binding var groupSelected: Groups
    
    var body: some View {
        VStack {
            GroupSelectionIndicatorView(groupSelected: $groupSelected)
        
            HStack(alignment: .center, spacing: 80) {
                ForEach(Groups.allCases, id: \.rawValue) { group in
                    Button(action: {
                        groupSelected = group
                    }) {
                        Image(group.rawValue)
                            .GroupButtonImageModifier()
                    }
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
        @State var groupSelected: Groups = .coffee
        
        var body: some View {
            GroupNavigationView(groupSelected: $groupSelected)
        }
    }
}
