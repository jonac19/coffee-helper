//
//  GroupSelectionBarView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/6/22.
//

import SwiftUI

struct GroupSelectionIndicatorView: View {
    @Binding var groupSelected: Groups
    
    var position: CGFloat {
        switch groupSelected {
        case .coffee:
            return -125
        case .tea:
            return 0
        case .smoothie:
            return 125
        }
    }
    
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(Color(red: 0.93, green: 0.00, blue: 0.02))
                .frame(width: 100)
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
