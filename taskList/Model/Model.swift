//
//  Model.swift
//  taskList
//
//  Created by Илья Шаповалов on 22.06.2022.
//

import Foundation

struct TaskList: Codable, Identifiable {
    let id = UUID()
    var detail: String
}

// Test data struct
struct Post: Codable, Identifiable, Hashable {
    let id = UUID()
    var title: String
    var body: String
}
