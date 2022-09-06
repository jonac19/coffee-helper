//
//  DrinksModel.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/4/22.
//

import Foundation

class SproModel: ObservableObject {
    var groups: [Group] = [Group]()
//    let dummyDataFiles: [String] = ["coffee_dummy_data", "tea_dummy_data", "food_dummy_data"]
    let dummyDataFiles: [String] = ["coffee_dummy_data", "tea_dummy_data"]
    
    init() {
        self.load()
    }
    
    func load() {
        for dummyDataFile in self.dummyDataFiles {
            if let url = Bundle.main.url(forResource: dummyDataFile, withExtension: "json") {
                if let data = try? Data(contentsOf: url) {
                    if let group = try? JSONDecoder().decode(Group.self, from: data) {
                        self.groups.append(group)
                    }
                }
            }
        }
    }
}
