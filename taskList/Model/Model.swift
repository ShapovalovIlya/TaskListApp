//
//  Model.swift
//  taskList
//
//  Created by Илья Шаповалов on 22.06.2022.
//

import Foundation

// Test data struct
struct Post: Codable, Identifiable, Hashable {
    let id = UUID()
    var title: String
    var body: String
}
