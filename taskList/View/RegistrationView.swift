//
//  RegistrationView.swift
//  taskList
//
//  Created by Илья Шаповалов on 22.06.2022.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject private var viewModel = RegistrationVM()
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("RegistrationView")
                .bold()
            
            TextField("Login", text: $viewModel.username)
                .frame(height: 50)
            
            SecureField("Password", text: $viewModel.password)
                .frame(height: 50)
            
            SecureField("Confirm password", text: $viewModel.confirmPassword)
                .frame(height: 50)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Registration")
            }
            .frame(width: UIScreen.main.bounds.width / 1.5,
                   height: UIScreen.main.bounds.height / 12,
                   alignment: .center)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 1, x: 1, y: 1)
            
            Spacer()
            
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: UIScreen.main.bounds.width / 1.5,
               alignment: .center)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
