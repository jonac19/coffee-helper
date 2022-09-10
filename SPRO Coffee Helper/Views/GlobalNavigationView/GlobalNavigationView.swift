//
//  GlobalNavigationView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/6/22.
//

import SwiftUI

struct GlobalNavigationView: View {
    @Binding var isSearching: Bool
    
    var body: some View {
        ZStack {
            HStack {
                Image("spro_logo_clear")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                Spacer()
                Button(action: {
                    isSearching = !isSearching
                }) {
                    Image("search_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                }
            }
            .padding([.leading, .trailing], 20)
        }
    }
}

struct GlobalNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalNavigationView(isSearching: Binding.constant(false))
    }
}
