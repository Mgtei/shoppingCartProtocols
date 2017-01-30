//
//  ShoppingCartItem.swift
//  ShoppingCartProtocols
//
//  Created by Marty Avedon on 1/30/17.
//  Copyright © 2017 Marty Hernandez Avedon. All rights reserved.
//

import Foundation

struct ShoppingItem {
    let price: Double
    let name:  String
    let sku: String
    let quantity: Int
    
    var description: String {
        return String(format: "(%0.1f) %s %0.2f", quantity, name, price)
    }
}

class ShoppingCart {
    var cartItems = [ShoppingItem]()
    
    func add(item: Item) {
        self.cartItems.append(item)
    }
}

class ShoppingTrip {
    var cart = ShoppingCart
    
    static let shared = ShoppingTrip()
    private init() {}
}

