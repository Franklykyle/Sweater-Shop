//
//  Product.swift
//  SweaterShop(SwiftUI)
//
//  Created by Kyle Franklin on 4/13/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Sand sweater", image: "sweater1", price: 54),
                    Product(name: "Green sweater", image: "sweater2", price: 89),
                    Product(name: "Grey sweater", image: "sweater3", price: 79),
                    Product(name: "Orange sweater", image: "sweater4", price: 94),
                    Product(name: "Tan sweater", image: "sweater5", price: 99),
                    Product(name: "Graphic sweater", image: "sweater6", price: 65),
                    Product(name: "Black sweater", image: "sweater7", price: 100),
                    Product(name: "Red sweater", image: "sweater8", price: 83)]
