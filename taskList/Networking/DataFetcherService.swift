//
//  DataFetcherService.swift
//  taskList
//
//  Created by Илья Шаповалов on 23.06.2022.
//

import Foundation

class DataFetcherService {
    
    private let K = Constants()
    private var dataFetcher: DataFetcher
    private let jsonplaceholderURL = "https://jsonplaceholder.typicode.com/posts"
    
    init(dataFetcher: DataFetcher = NetworkDataFetcher()) {
        self.dataFetcher = dataFetcher
    }
    
    
    func getPosts(complition: @escaping ([Post]?) -> Void) {
         let url = jsonplaceholderURL
        dataFetcher.fetchGenericJSONData(urlString: url, response: complition)
        
    }
    
}


//Fetch Data for the chosen movie
//func fetchData(ofType type: String, withId id: Int, completion: @escaping (DetailMovieData?) -> Void) {
//    let fullUrl = "\(movieUrl)/\(type)/\(id)\(key)"
//    dataFetcher.fetchGnericJSONData(urlString: fullUrl, response: completion)
//}

