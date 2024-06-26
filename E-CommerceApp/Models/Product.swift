//
//  Product.swift
//  E-CommerceApp
//
//  Created by Şehriban Yıldırım on 25.06.2024.
//

import Foundation
struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplies: String
    var price: Int
}

var productList = [
    Product(name: "Gray Couch", image: "fnf1", description: "", supplies: "IKEA", price: 1000),
    Product(name: "White Chair", image: "fnf2", description: "", supplies: "Walmart", price: 1000),
    Product(name: "White Table", image: "fnf3", description: "", supplies: "Home Depo", price: 1000),
    Product(name: "White Couch", image: "fnf4", description: "", supplies: "IKEA", price: 1000),
    Product(name: "Natural Bedroom", image: "fnf5", description: "", supplies: "Walmart", price: 1000)
]
