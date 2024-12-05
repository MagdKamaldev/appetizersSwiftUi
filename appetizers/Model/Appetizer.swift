//
//  Appetizer.swift
//  appetizers
//
//  Created by Macbook on 02/12/2024.
//

import Foundation

struct Appetizer : Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData{
    static let sampleAppetizer = Appetizer(id: 001,
                                name: "appetizer 1",
                                description: " a good appetizer",
                                price: 99.88,
                                imageURL: "https://pbs.twimg.com/profile_images/1455292284958695424/SP3GFrPA_400x400.jpg",
                                calories: 356,
                                protein: 23,
                                carbs: 45)
    
    static let sampleAppetizer2 = Appetizer(id: 002,
                                name: "appetizer 1",
                                description: " a good appetizer",
                                price: 99.88,
                                imageURL: "https://pbs.twimg.com/profile_images/1455292284958695424/SP3GFrPA_400x400.jpg",
                                calories: 356,
                                protein: 23,
                                carbs: 45)
    
    static let sampleAppetizer3 = Appetizer(id: 003,
                                name: "appetizer 1",
                                description: " a good appetizer",
                                price: 99.88,
                                imageURL: "https://pbs.twimg.com/profile_images/1455292284958695424/SP3GFrPA_400x400.jpg",
                                calories: 356,
                                protein: 23,
                                carbs: 45)
    
    static let appetizers = [sampleAppetizer,sampleAppetizer2,sampleAppetizer3]
}
