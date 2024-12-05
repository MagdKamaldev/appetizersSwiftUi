//
//  EmptyState.swift
//  appetizers
//
//  Created by Macbook on 03/12/2024.
//

import SwiftUI

struct EmptyState: View {
    let imageName:String
    let message:String
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y:-50)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "message")
}
