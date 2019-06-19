//
//  Movies.swift
//  Movies
//
//  Created by Pamela Ianovalli on 19/06/19.
//  Copyright © 2019 Pamela Ianovalli. All rights reserved.
//

import Foundation

struct Movie: Codable {
    var title: String?
    var categories: [String]?
    var duration: String?
    var rating: Double?
    var summary: String?
    var image: String?
    var itemType: ItemType?
    
    var strCategories: String {
        return categories?.joined(separator: " | ") ?? ""
    }
    
    enum CodingKeys: String, CodingKey {
        case tile
        case categories
        case duration
        case rating
        case summary = "description"
        case image
        case itemType = "item_type"
    }
}
