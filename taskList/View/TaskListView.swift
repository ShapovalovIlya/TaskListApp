//
//  TaskListView.swift
//  taskList
//
//  Created by Илья Шаповалов on 22.06.2022.
//

import SwiftUI

struct TaskListView: View {
    
    @StateObject  private var viewModel = TaskListVM()
    
    var body: some View {
        List(viewModel.posts) { post in
            Text(post.title)
            // Set left swipe action
                .swipeActions(edge: .leading, allowsFullSwipe: true) {
                    Button {
                        let _ = print("check button tapped!")
                    } label: {
                        Label("Mark", systemImage: "checkmark.rectangle")
                    }
                }
                .tint(.blue)
            // Set right swipe action
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    Button {
                        let _ = print("remove button tapped!")
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
                .tint(.red)
        }
        .navigationTitle("Task List")
        .onAppear{
            viewModel.getPosts()
        }
    }
}


struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
