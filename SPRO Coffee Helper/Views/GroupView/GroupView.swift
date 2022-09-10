//
//  GroupView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/12/22.
//

import SwiftUI



struct GroupView: View {
    @ObservedObject var sproModel: SproModel = SproModel()
    @State private var groupSelected: Groups = .coffee
    @State private var isSearching: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                if groupSelected == .coffee {
                    CategoryView(group: sproModel.groups[0], isSearching: $isSearching)
                } else if groupSelected == .tea {
                    CategoryView(group: sproModel.groups[1], isSearching: $isSearching)
                } else if groupSelected == .smoothie {
                    CategoryView(group: sproModel.groups[2], isSearching: $isSearching)
                }

                GroupNavigationView(groupSelected: $groupSelected)
            }
            
            if isSearching {
                GlobalSearchView(isSearching: $isSearching)
            }
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
