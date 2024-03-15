//
//  LoginView.swift
//  ToDoList
//
//  Created by Thanadon Boontawee on 8/3/2567 BE.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do List", subtitle: "Get things Done", angle: 15, background: .pink)
                
                Form {
                    TextField("Email Address", text: $email)
                    SecureField("Password", text: $password)
                }
                
                TLButton(title: "Log In", background: .blue) {
                    
                }
            }
            VStack {
                Text("New Account Here")
                NavigationLink("Create Account", destination: RegisterView())
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
