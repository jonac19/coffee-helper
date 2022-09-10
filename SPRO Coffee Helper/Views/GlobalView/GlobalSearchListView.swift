//
//  GlobalSearchListView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/9/22.
//

import SwiftUI

struct GlobalSearchListView: View {
    var body: some View {
        VStack {
            Text("Under Construction")
                .padding()
                .font(.system(size: 30))
            Image(systemName: "xmark")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
        }
    }
}

struct GlobalSearchListView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalSearchListView()
    }
}
