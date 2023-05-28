//
//  Pokedex.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 28.05.2023.
//

import Foundation

struct Pokedex: Codable {
    let attack, defense: Int
    let description: String
    let evolutionChain: [EvolutionChain]?
    let height, id: Int
    let imageURL: String
    let name, type: String
    let weight: Int
    let pokedexDefense: Int?

    enum CodingKeys: String, CodingKey {
        case attack, defense, description, evolutionChain, height, id
        case imageURL = "imageUrl"
        case name, type, weight
        case pokedexDefense = "defense:"
    }
}

// MARK: - EvolutionChain
struct EvolutionChain: Codable {
    let id, name: String
}

