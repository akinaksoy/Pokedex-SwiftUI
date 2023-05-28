//
//  APIService.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 28.05.2023.
//

import Foundation

class ApiService {
    
    class func ApiRequest(method: NetworkConstants.HTTPMethods,
                          completion: @escaping ([Pokedex?]?,RequestError.ErrorTypes?) -> Void) {
        let networkConstants = NetworkConstants()
        let baseURL = networkConstants.baseUrl
        guard let url = URL(string: "\(baseURL)") else {
            completion(nil,.NetworkError)
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            guard let data = data else { return }
            DispatchQueue.main.async {
                do {
                    let pokeList = try JSONDecoder().decode([Pokedex?].self, from: data)
                    completion(pokeList, nil)
                } catch {
                    completion(nil,.NetworkError)
                }
            }
        })
        
        task.resume()
    }
}
