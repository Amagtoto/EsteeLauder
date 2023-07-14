//
//  ReviewModel.swift
//  EsteeLauder
//
//  Created by Angela Magtoto on 7/13/23.
//

import Foundation

import Foundation

struct Review: Identifiable, Equatable {
    let id = UUID()
    var product: String
    var title1: String
    var description1: String
    var title2: String
    var description2: String
    var image: String
    var tag: Int
    
    static var sampleReview =  Review(product: "Nutritious Collection", title1: "Love this collection", description1: "My skin has never looked so happy. This leaves my skin clean and healthy!", title2: "Dreamy Hydration", description2: "This product was so hydrating and creamy. I loved the light scent and smooth consistency", image: "cleanserReview", tag: 0)
    
    static var sampleReviews: [Review] = [
        Review(product: "Nutritious Collection", title1: "Love this collection", description1: "My skin has never looked so happy. This leaves my skin clean and healthy!", title2: "Dreamy Hydration", description2: "This product was so hydrating and creamy. I loved the light scent and smooth consistency", image: "learn", tag: 0)
    ]
}
