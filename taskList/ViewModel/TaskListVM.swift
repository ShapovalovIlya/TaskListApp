//
//  ViewModel.swift
//  taskList
//
//  Created by Илья Шаповалов on 22.06.2022.
//

import Foundation

extension TaskListView {
    @MainActor class TaskListVM: ObservableObject {
        
        @Published var posts = [Post]()
        
        func getPosts() {
            DataFetcherService().getPosts { posts in
                guard let unwrappedPosts = posts else { return }
                self.posts = unwrappedPosts
            }
        }
    }
}
