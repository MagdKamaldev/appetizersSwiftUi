//
//  ApButton.swift
//  appetizers
//
//  Created by Macbook on 03/12/2024.
//

import SwiftUI

struct ApButton: View {
    let title:LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260,height: 50)
            .foregroundColor(.white)
            .background(Color.BrandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    ApButton(title: "title")
}
