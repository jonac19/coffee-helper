//
//  GroupView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/12/22.
//

import SwiftUI



struct GroupView: View {
    @ObservedObject var sproModel: SproModel = SproModel()
    @State private var groupSelected: Groups = .coffee
    
    var body: some View {
        VStack(spacing: 0) {
            if groupSelected == .coffee {
                CategoryView(group: sproModel.groups[0])
            } else if groupSelected == .tea {
                CategoryView(group: sproModel.groups[1])
            } else if groupSelected == .smoothie {
                CategoryView(group: sproModel.groups[2])
            }

            GroupNavigationView(groupSelected: $groupSelected)
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
