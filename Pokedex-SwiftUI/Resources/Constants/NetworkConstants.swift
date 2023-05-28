//
//  NetworkConstants.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 28.05.2023.
//

import Foundation

struct NetworkConstants {
    
    let baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    enum HTTPMethods : String{
        case GET = "GET"
    }
}

struct RequestError {
    
    enum ErrorTypes : String {
        case NetworkError = "Network Error. Please Try Again"
        case SomethingWentWrong = "Something went wrong. Please Try Again."
    }
    
}
