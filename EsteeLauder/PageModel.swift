//
//  PageModel.swift
//  EsteeLauder
//
//  Created by Angela Magtoto on 7/11/23.
//

import Foundation

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage =  Page(name: "Nutritious Collection", description: "Oil Reducer. Pore Minimizer. Redness Fighter. Everything skin craves for a bissful, healthy look", imageUrl: "learn", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Nutritious Collection", description: "Oil Reducer. Pore Minimizer. Redness Fighter. Everything skin craves for a bissful, healthy look", imageUrl: "learn", tag: 0),
        Page(name: "Skin-Loving, Future-Loving", description: "Nutrient-rich. Featuring 92%+ naturally derived* formulas. Skincare that will help skin flourish and glow.", imageUrl: "loving", tag: 1),
        Page(name: "Nutrigenomics", description: "Where nutrition and skin science intersect. Harness the power of nutrient diversity to re-balance the look of grumpy skin.", imageUrl: "nutri", tag: 2),
    ]
}
