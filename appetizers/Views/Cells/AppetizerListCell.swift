//
//  AppetizerListCell.swift
//  appetizers
//
//  Created by Macbook on 03/12/2024.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack{
            AppetizerReomteImage(urlString: appetizer.imageURL)
                .cornerRadius(8)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
            VStack(alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }.padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
