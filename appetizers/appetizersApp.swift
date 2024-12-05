//
//  appetizersApp.swift
//  appetizers
//
//  Created by Macbook on 01/12/2024.
//

import SwiftUI

@main
struct appetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
