//
//  Order.swift
//  appetizers
//
//  Created by Macbook on 03/12/2024.
//

import SwiftUI

final class Order: ObservableObject{
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    var totalPrice:Double{
        items.reduce(0){
            $0 + $1.price
        }
    }
    
}
