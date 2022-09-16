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
                Text("Coffee Helper")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundColor(Color(red: 0.93, green: 0.00, blue: 0.02))
                Spacer()
                Button(action: {
                    isSearching = !isSearching
                }) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundColor(Color(red: 0.93, green: 0.00, blue: 0.02))
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
