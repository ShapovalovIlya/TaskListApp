//
//  ContentView.swift
//  taskList
//
//  Created by Илья Шаповалов on 22.06.2022.
//

import SwiftUI

struct MainMenuView: View {
    
    //MARK: - Private properties
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var tagSelection: String? = nil
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10) {
                //Navigation Link
                NavigationLink(destination: TaskListView(), tag: "TaskList", selection: $tagSelection)
                { EmptyView() }
                NavigationLink(destination: RegistrationView(), tag: "Registration", selection: $tagSelection)
                { EmptyView() }
                
                Spacer()
                Text("Welcome \(username)!")
                
                Spacer()
                
                    TextField("Login", text: $username)
                        .frame(height: 40)
                    
                    TextField("Password", text: $password)
                        .frame(height: 40)
            
                Button {
                    tagSelection = "TaskList"
                } label: {
                    Text("Login")
                }
                .frame(width: 200, height: 40, alignment: .center)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 1, x: 1, y: 1)
                
                Button {
                    tagSelection = "Registration"
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
