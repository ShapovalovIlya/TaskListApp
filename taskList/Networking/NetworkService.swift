//
//  NetworkService.swift
//  taskList
//
//  Created by Илья Шаповалов on 22.06.2022.
//

import Foundation

protocol Networking {
    func getRequest(urlString: String, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
    func postRequest(urlString: String, complition: @escaping (Data?, URLResponse?, Error?) -> Void) async
}

class NetworkService: Networking {
    //MARK: - Requests
    func getRequest(urlString: String, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        guard let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        let task = createDataTask(from: request, completion: completion)
        task.resume()
    }
    
    func postRequest(urlString: String, complition: @escaping (Data?, URLResponse?, Error?) -> Void) async {
        guard let url = URL(string: urlString) else { return }
        var request = URLRequest(url: url)
        request.setValue("aplication/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
    }
    
    
    
    private func createDataTask(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return URLSession.shared.dataTask(with: request) { data, response, error in
            if let httpResponce = response as? HTTPURLResponse {
                print("Status code: \(httpResponce.statusCode)")
            } else {
                return
            }
            DispatchQueue.main.async {
                completion(data, response, error)
            }
        }
    }
}
