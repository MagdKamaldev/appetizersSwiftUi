//
//  OrderView.swift
//  appetizers
//
//  Created by Macbook on 01/12/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(InsetGroupedListStyle())
                    
                    Button{
                        print("ordeer placed")
                    }label:{
                        ApButton(title: "$\(order.totalPrice, specifier:"%.2f") - Place order")
                    }.padding(.bottom)
                }
                if(order.items.isEmpty){
                    EmptyState(imageName: "empty-order", message: "No items added yet to cart ! ")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
   
}

#Preview {
    OrderView()
        .environmentObject(Order())
}
