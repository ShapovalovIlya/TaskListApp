//
//  RegistrationVM.swift
//  taskList
//
//  Created by Илья Шаповалов on 23.06.2022.
//

import Foundation

extension RegistrationView {
    @MainActor class RegistrationVM: ObservableObject {
        @Published var username: String = ""
        @Published var password: String = ""
        @Published var confirmPassword: String = ""
    }
}
