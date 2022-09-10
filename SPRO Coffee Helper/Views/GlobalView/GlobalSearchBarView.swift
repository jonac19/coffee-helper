//
//  GlobalSearchBarView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/9/22.
//

import SwiftUI

struct GlobalSearchBarView: View {
    @State private var searchText: String = ""
    @FocusState private var isFocused: Bool
    @Binding var isSearching: Bool

    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
                .foregroundColor(Color(red: 0.93, green: 0.00, blue: 0.02))
            
            TextField("Search...", text: $searchText)
                .disableAutocorrection(true)
                .onAppear {
                    isFocused = true
                }
                .focused($isFocused, equals: isSearching)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .foregroundColor(Color(red: 0.93, green: 0.00, blue: 0.02))
                        .onTapGesture {
                            isSearching = false
                        }
                    ,alignment: .trailing
                )
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke()
        )
        .padding([.leading, .trailing])
    }
}

struct GlobalSearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalSearchView(isSearching: Binding.constant(true))
    }
}
