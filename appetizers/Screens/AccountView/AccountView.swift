//
//  AccountView.swift
//  appetizers
//
//  Created by Macbook on 01/12/2024.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal info")){
                    TextField("First Name",text:$viewModel.user.firstName)
                    TextField("Last Name",text:$viewModel.user.lastName)
                    TextField("Email",text:$viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("BirthDay",
                               selection: $viewModel.user.birthDate,
                            displayedComponents: .date)
                    Button{
                        viewModel.saveChanges()
                    }
                    label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header:
                            Text("Requests")
                    .font(.subheadline)
                ){
                    Toggle("Extra Napkins",isOn: $viewModel.user.extraNapkins)
                    Toggle("frequent Refills",isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .BrandPrimary))
                
            }
            .navigationTitle("Account")
            .onAppear{
                viewModel.retrieveUser()
            }
            .alert(item: $viewModel.alertItem){alertItem in
                Alert(title: alertItem.title,message: alertItem.message,dismissButton: alertItem.dissmissButton)
            }
        }
    }
}

#Preview {
    AccountView()
}
