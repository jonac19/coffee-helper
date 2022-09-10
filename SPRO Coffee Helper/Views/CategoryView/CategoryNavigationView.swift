//
//  CategoryNavigationView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/6/22.
//

import SwiftUI

struct CategoryNavigationView: View {
    let group: Group
    let proxy: ScrollViewProxy
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 25) {
                ForEach(group.categories) { category in
                    Button(category.name) {
                        withAnimation {
                            proxy.scrollTo("ID " + category.name, anchor: .top)
                        }
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 18))

                }
            }
            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
        }
        .background(Color(red: 0.9, green: 0.10, blue: 0.02))
    }
}

struct CategoryNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
