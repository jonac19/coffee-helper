//
//  GroupSelectionBarView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 9/6/22.
//

import SwiftUI

struct GroupSelectionIndicatorView: View {
    let groupSelected: Groups
    
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
        Rectangle()
            .foregroundColor(Color(red: 0.93, green: 0.00, blue: 0.02))
            .frame(width: 100, height: 5)
            .offset(x: position) 
    }
}

struct GroupSelectionBarView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
