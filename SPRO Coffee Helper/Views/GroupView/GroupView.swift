//
//  GroupView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/12/22.
//

import SwiftUI

struct GroupView: View {
    @ObservedObject var sproModel: SproModel = SproModel()
    @State private var groupSelected: String = "Coffee"
    
    var body: some View {
        VStack(spacing: 0) {
            if groupSelected == "Coffee" {
                CategoryView(group: sproModel.groups[0])
            } else if groupSelected == "Tea" {
                CategoryView(group: sproModel.groups[1])
//                CategoryView(group: sproModel.groups[1])
            } else if groupSelected == "Food" {
                CategoryView(group: sproModel.groups[0])
//                CategoryView(group: sproModel.groups[2])
            } else {
                CategoryView(group: sproModel.groups[0])
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
