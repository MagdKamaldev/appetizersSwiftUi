//
//  ContentView.swift
//  appetizers
//
//  Created by Macbook on 01/12/2024.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem{
                Image(systemName: "house")
                Text("Home")
            }
            AccountView()
                .tabItem{
                Image(systemName: "person")
                Text("Account")
            }
            OrderView()
                .tabItem{
                Image(systemName: "bag")
                Text("order")
            }
        }
        .accentColor(.brandPrimary)
    }
}

#Preview {
    AppetizerTabView()
        .environmentObject(Order())
}
