//
//  CategoryView.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/11/22.
//

import SwiftUI

struct CategoryView: View {
    var group: Group
    @State private var visibleCategories: Set<Category>
    
    init(group: Group) {
        UIBarButtonItem.appearance().tintColor = .white
        visibleCategories = Set(group.categories)
        self.group = group
    }
    
    var body: some View {
        NavigationView {
            VStack {
                // Top navbar
                HStack {
                    Image("spro_logo_clear")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                    Spacer()
                    Image("search_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45)
                }
                .padding([.leading, .trailing], 20)

                // Category navbar
                ScrollViewReader { proxy in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 25) {
                            ForEach(group.categories) { category in
                                Button(category.name) {
                                    withAnimation {
                                        proxy.scrollTo("ID " + category.name, anchor: .top)
                                    }
                                }
                                .foregroundColor(.white)
                                .font(.system(size: 18))

                            }
                        }
                        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                    }
                    .background(Color(red: 0.9, green: 0.10, blue: 0.02))
                    
                    // Category list
                    List {
                        ForEach(group.categories) { category in
                            Section(header: Text(category.name)
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.black)
                            )
                            {
                                ForEach(category.drinks) { drink in
                                    NavigationLink(
                                        drink.name, destination: DrinkView(drink: drink)
                                    )
                                }
                            }
                            .textCase(nil)
                            .id("ID " + category.name)
                        }
                    }
                    .listStyle(InsetGroupedListStyle())
                    .frame(height: .infinity)
                }
            }
            .navigationBarTitle("Back", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}

