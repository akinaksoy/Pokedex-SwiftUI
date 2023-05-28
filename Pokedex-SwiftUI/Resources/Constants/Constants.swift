//
//  Constants.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 28.05.2023.
//

import Foundation

struct Constants {
    static var primaryColor = "pokeRed"
    static var backgroundColor = "Black"
    static var secondaryColor = "blue"
    static var textColor = "white"
    enum PokeType : String{
        case all = "all"
        case poison = "poison"
        case fire = "fire"
        case water = "water"
        case bug = "bug"
        case flying = "flying"
        case normal = "normal"
        case electric = "electric"
        case ground = "ground"
        case fairy = "fairy"
        case grass = "grass"
        case fighting = "fighting"
        case psychic = "psychic"
        case steel = "steel"
        case ice = "ice"
        case rock = "rock"
        case dragon = "dragon"
    }
    enum PokeColor {
        case greenColors
        case redColors
        case blueColors
        case pinkColors
        case blackColors
        case yellowColors
    }
    
    static func generateColorDesign(pokeColor : PokeColor) {
        switch pokeColor {
        case .greenColors:
            primaryColor = "Orange"
            backgroundColor = "DarkGreen"
            secondaryColor = "LightGreen"
            textColor = "white"
        case .redColors:
            primaryColor = "Orange"
            backgroundColor = "pokeRed"
            secondaryColor = "darkOrange"
            textColor = "white"
        case .blueColors:
            primaryColor = "pokeRed"
            backgroundColor = "DarkBlue"
            secondaryColor = "DarkGreen"
            textColor = "white"
        case .pinkColors:
            primaryColor = "pokeRed"
            backgroundColor = "Purple"
            secondaryColor = "Pink"
            textColor = "white"
        case .blackColors:
            primaryColor = "pokeRed"
            backgroundColor = "Black"
            secondaryColor = "pokeRed"
            textColor = "white"
        case .yellowColors:
            primaryColor = "darkOrange"
            backgroundColor = "OrangeC"
            secondaryColor = "pokeRed"
            textColor = "white"
        }
    }
    
    
    static func genaratePokeTypeList() -> [String] {
        var pokeTypeList = [String]()
        pokeTypeList.append("all")
        pokeTypeList.append(PokeType.poison.rawValue)
        pokeTypeList.append(PokeType.fire.rawValue)
        pokeTypeList.append(PokeType.water.rawValue)
        pokeTypeList.append(PokeType.bug.rawValue)
        pokeTypeList.append(PokeType.flying.rawValue)
        pokeTypeList.append(PokeType.electric.rawValue)
        pokeTypeList.append(PokeType.fairy.rawValue)
        pokeTypeList.append(PokeType.ground.rawValue)
        pokeTypeList.append(PokeType.grass.rawValue)
        pokeTypeList.append(PokeType.fighting.rawValue)
        pokeTypeList.append(PokeType.psychic.rawValue)
        pokeTypeList.append(PokeType.steel.rawValue)
        pokeTypeList.append(PokeType.ice.rawValue)
        pokeTypeList.append(PokeType.rock.rawValue)
        pokeTypeList.append(PokeType.dragon.rawValue)
        return pokeTypeList
    }
    
    
}
