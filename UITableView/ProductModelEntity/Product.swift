//
//  Product.swift
//  UITableView
//
//  Created by Aung Kyaw Phyo on 05/12/2024.
//

import Foundation

class Product {
    
    let image: String?
    let name: String?
    let rating: Int?
    let description: String?
    
    init(image: String?, name: String?, rating: Int?, description: String?) {
        self.image = image
        self.name = name
        self.rating = rating
        self.description = description
    }
    
}
