//
//  GroupSelectionBarView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/6/22.
//

import SwiftUI

struct GroupSelectionIndicatorView: View {
    @Binding var groupSelected: String
    
    var position: CGFloat {
        switch groupSelected {
        case "Coffee":
            return -144
        case "Tea":
            return -48
        case "Food":
            return 48
        case "Batch Brew":
            return 144
        default:
            return -155
        }
    }
    
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(Color(red: 0.93, green: 0.00, blue: 0.02))
                .frame(width: 70)
                .offset(x: position)

        }
        .frame(height: 5)
    }
}

struct GroupSelectionBarView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
