//
//  CategoryView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/11/22.
//

import SwiftUI

struct CategoryView: View {
    private var group: Group
    @Binding var isSearching: Bool
    
    init(group: Group, isSearching: Binding<Bool>) {
        self.group = group
        _isSearching = isSearching
        UIBarButtonItem.appearance().tintColor = .white
    }
    
    var body: some View {
        NavigationView {
            VStack {
                GlobalNavigationView(isSearching: $isSearching)

                ScrollViewReader { proxy in
                    CategoryNavigationView(group: group, scrollProxy: proxy)
                    CategoryListView(group: group)
                }
            }
            .navigationBarTitle("Back", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}

