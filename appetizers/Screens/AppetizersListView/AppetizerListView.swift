//
//  AppetizerListView.swift
//  appetizers
//
//  Created by Macbook on 01/12/2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetails = true
                        }
                }.navigationTitle("🍟 Appetizers")
                    .disabled(viewModel.isShowingDetails)
            }.onAppear{
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetails ? 20 : 0)
            
            if(viewModel.isShowingDetails){
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer! ,
                                    isShowingDetail:
                                        $viewModel.isShowingDetails)
            }
            if(viewModel.isLoading){
                LoadingView()
            }
        }.alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dissmissButton)
        }
    }
    
   
}

#Preview {
    AppetizerListView()
}
