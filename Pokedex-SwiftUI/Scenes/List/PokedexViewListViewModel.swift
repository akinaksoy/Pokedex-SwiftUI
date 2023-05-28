//
//  PokedexViewListViewModel.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 28.05.2023.
//

import Foundation

class PokedexViewModel :ObservableObject{
    @Published var pokemonShowList = [Pokedex]()
    @Published var categoriesList = Constants.genaratePokeTypeList()
    
    
    @Published var pokemonAllList = [Pokedex]()
    @Published var pokemonPoisonList = [Pokedex]()
    @Published var pokemonFireList = [Pokedex]()
    @Published var pokemonWaterList = [Pokedex]()
    @Published var pokemonBugList = [Pokedex]()
    @Published var pokemonFlyingList = [Pokedex]()
    @Published var pokemonNormalList = [Pokedex]()
    @Published var pokemonElectricList = [Pokedex]()
    @Published var pokemonGroundList = [Pokedex]()
    @Published var pokemonFairyList = [Pokedex]()
    @Published var pokemonGrassList = [Pokedex]()
    @Published var pokemonFightiningList = [Pokedex]()
    @Published var pokemonPsychicList = [Pokedex]()
    @Published var pokemonSteelList = [Pokedex]()
    @Published var pokemonIceList = [Pokedex]()
    @Published var pokemonRockList = [Pokedex]()
    @Published var pokemonDragonList = [Pokedex]()
    
}
