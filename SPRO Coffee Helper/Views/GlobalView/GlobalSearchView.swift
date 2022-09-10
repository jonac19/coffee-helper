//
//  GlobalSearchView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/7/22.
//

import SwiftUI

struct GlobalSearchView: View {
    @Binding var isSearching: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            GeometryReader {_ in
                EmptyView()
            }
            .ignoresSafeArea()
            .background(Color(UIColor.systemBackground))
            
            VStack {
                GlobalSearchBarView(isSearching: $isSearching)
                Spacer()
                GlobalSearchListView()
                Spacer()
            }
        }
    }
}

struct GlobalSearchView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalSearchView(isSearching: Binding.constant(true))
    }
}
