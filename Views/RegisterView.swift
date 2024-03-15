//
//  RegisterView.swift
//  ToDoList
//
//  Created by Thanadon Boontawee on 8/3/2567 BE.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
                
                Form {
                    TextField("Full Name", text: $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Create Account", background: .green) {
                        viewModel.register()
                    }
                }
                .offset(y: -50)
                
                Spacer()
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
