//
//  GlobalSearchView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/7/22.
//

import SwiftUI

struct GlobalSearchView: View {
    @State private var drinkName: String = ""
    @Binding var isSearching: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            GeometryReader {_ in
                EmptyView()
            }
            .ignoresSafeArea()
            .background(.white)
            
            HStack {
                Image("search_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                
                TextField("Enter Drink", text: $drinkName)
                    .overlay(
                        Image(systemName: "xmark.circle.fill")
                            .padding()
                            .foregroundColor(Color(red: 0.93, green: 0.00, blue: 0.02))
                            .onTapGesture {
                                isSearching = false
                            }
                        
                        , alignment: .trailing
                    )
            }
            .padding()
        }
    }
}

struct GlobalSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
