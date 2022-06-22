//
//  RegistrationView.swift
//  taskList
//
//  Created by Илья Шаповалов on 22.06.2022.
//

import SwiftUI

struct RegistrationView: View {
    //MARK: - private properties
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("RegistrationView")
            
            TextField("Login", text: $username)
                .frame(height: 40)
            
            TextField("Password", text: $password)
                .frame(height: 40)
            
            TextField("Confirm password", text: $password)
                .frame(height: 40)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Registration")
            }
            .frame(width: 200, height: 40, alignment: .center)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 1, x: 1, y: 1)
            
            Spacer()
            
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 200, alignment: .center)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
