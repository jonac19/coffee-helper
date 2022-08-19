//
//  GroupView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/12/22.
//

import SwiftUI

struct GroupView: View {
    @ObservedObject var sproModel: SproModel = SproModel()
    @State private var groupSelection: String = "Coffee"
    
    var position: CGFloat {
        switch groupSelection {
        case "Coffee":
            return -155
        case "Tea":
            return -53
        case "Food":
            return 53
        case "Batch Brew":
            return 155
        default:
            return -155
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            if groupSelection == "Coffee" {
                CategoryView(group: sproModel.groups[0])
            } else if groupSelection == "Tea" {
                CategoryView(group: sproModel.groups[1])
            } else if groupSelection == "Food" {
                CategoryView(group: sproModel.groups[2])
            } else {
                CategoryView(group: sproModel.groups[0])
            }
            
            
            // Bottom navbar
            VStack {
                HStack {
                    Rectangle()
                        .foregroundColor(Color.red)
                        .frame(width: 80)
                        .offset(x: position)
        
                }
                .frame(height: 5)
                
                HStack(alignment: .center, spacing: 30) {
                    Button(action: {
                        groupSelection = "Coffee"
                    }) {
                        Image("coffee_icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45)
                    }
                    
                    Divider()
                        .frame(height: 60)

                    Button(action: {
                        groupSelection = "Tea"
                    }) {
                        Image("tea_icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45)
                    }
                    
                    Divider()
                        .frame(height: 60)
                    
                    Button(action: {
                        groupSelection = "Food"
                    }) {
                        Image("food_icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45)
                    }

                    Divider()
                        .frame(height: 60)
                    
                    Button(action: {
                        groupSelection = "Batch Brew"
                    }) {
                        Image("coffee_bag_icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45)
                    }
                }
            }
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
