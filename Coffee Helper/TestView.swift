//
//  TestView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/22/22.
//

import SwiftUI

struct TestView: View {
    @ObservedObject var sproModel: SproModel = SproModel()
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.secondarySystemBackground
    }
    
    var body: some View {
        TabView(content: {
            CategoryView(group: sproModel.groups[0])
                .tabItem{
                    Image("coffee_icon")
                }

            CategoryView(group: sproModel.groups[1])
                .tabItem{
                    Image("tea_icon")
                }

            CategoryView(group: sproModel.groups[2])
                .tabItem{
                    Image("food_icon")
                }
            CategoryView(group: sproModel.groups[2])
                .tabItem{
                    Image("coffee_bag_icon")
                }
        })
        .onAppear {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
