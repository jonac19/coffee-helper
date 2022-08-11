//
//  DrinksModel.swift
//  SPRO Coffee Helper
//
//  Created by Jonathan Chen on 8/4/22.
//

import Foundation

class DrinksModel: ObservableObject {
    var categories: [Category] = [Category]()
    var dummyDataFiles: [String] = ["simple_dummy_data", "fancy_dummy_data", "seasonal_dummy_data", "overTheTop_dummy_data", "smoothie_dummy_data"]
    
    init() {
        self.load()
    }
    
    func load() {
        for dummyDataFile in self.dummyDataFiles {
            if let url = Bundle.main.url(forResource: dummyDataFile, withExtension: "json") {
                if let data = try? Data(contentsOf: url) {
                    if let category = try? JSONDecoder().decode(Category.self, from: data) {
                        self.categories.append(category)
                    }
                }
            }
        }
    }
}
