//
//  ContentView.swift
//  taskList
//
//  Created by Илья Шаповалов on 22.06.2022.
//

import SwiftUI

struct MainMenuView: View {
    
    
    private let K = Constants()
    @StateObject private var viewModel = MainMenuVM()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10) {
                //Navigation Links
                NavigationLink(destination: TaskListView(), tag: K.taskListTag, selection: $viewModel.tagSelection)
                { EmptyView() }
                NavigationLink(destination: RegistrationView(), tag: K.registrationTag, selection: $viewModel.tagSelection)
                { EmptyView() }
                
                Spacer()
                Text("Welcome \(viewModel.username)!")
                    .bold()
                
                TextField("Login", text: $viewModel.username)
                        .frame(height: 50)
                    
                SecureField("Password", text: $viewModel.password)
                        .frame(height: 50)
                
                Spacer()
            
                Button {
                    viewModel.tagSelection = K.taskListTag
                } label: {
                    Text("Login")
                }
                .frame(width: UIScreen.main.bounds.width / 1.5,
                       height: UIScreen.main.bounds.height / 12,
                       alignment: .center)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 1, x: 1, y: 1)
                
                Button {
                    viewModel.tagSelection = K.registrationTag
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
