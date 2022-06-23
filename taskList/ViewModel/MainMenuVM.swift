//
//  MainMenuVM.swift
//  taskList
//
//  Created by Илья Шаповалов on 23.06.2022.
//

import Foundation

extension MainMenuView {
    @MainActor class MainMenuVM: ObservableObject {
        @Published var username: String = ""
        @Published var password: String = ""
        @Published var tagSelection: String? = nil
    }
}
