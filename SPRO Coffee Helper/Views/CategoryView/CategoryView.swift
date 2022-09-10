//
//  CategoryView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/11/22.
//

import SwiftUI

struct CategoryView: View {
    private var group: Group
    
    init(group: Group) {
        self.group = group
        UIBarButtonItem.appearance().tintColor = .white
    }
    
    var body: some View {
        ScrollViewReader { proxy in
            CategoryNavigationView(group: group, proxy: proxy)
            CategoryListView(group: group)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}

