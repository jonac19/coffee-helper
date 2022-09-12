//
//  GlobalSearchView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/7/22.
//

import SwiftUI

struct GlobalSearchView: View {
    @State var searchText: String = ""
    
    @Binding var isSearching: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            GeometryReader {_ in
                EmptyView()
            }
            .ignoresSafeArea()
            .background(Color(UIColor.systemBackground))
            
            NavigationView {
                VStack {
                    GlobalSearchBarView(searchText: $searchText, isSearching: $isSearching)
                    
                    GlobalSearchListView(searchText: $searchText)
                }
                .navigationBarTitle("Back", displayMode: .inline)
                .navigationBarHidden(true)
            }
        }
    }
}

struct GlobalSearchView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalSearchView(isSearching: Binding.constant(true))
            .environmentObject(SproModel())
    }
}
