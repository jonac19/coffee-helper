//
//  CategoryView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/11/22.
//

import SwiftUI

struct CategoryView: View {
    var group: Group
    @State private var visibleCategories: Set<Category>
    
    init(group: Group) {
        UIBarButtonItem.appearance().tintColor = .white
        visibleCategories = Set(group.categories)
        self.group = group
    }
    
    var body: some View {
        NavigationView {
            VStack {
                GlobalNavigationView()

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

