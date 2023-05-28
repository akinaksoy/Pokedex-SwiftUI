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
    
    func fetchAllPokemon() {
        ApiService.ApiRequest(method: .GET) { pokedex, error in
            guard let pokedex = pokedex else {return}
            for item in pokedex {
                guard let poke = item else {continue}
                self.pokemonAllList.append(poke)
                
            }
            self.pokemonShowList = self.pokemonAllList
            for pokemon in self.pokemonAllList {
                if pokemon.type == Constants.PokeType.poison.rawValue {
                    self.pokemonPoisonList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.fire.rawValue {
                    self.pokemonFireList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.water.rawValue {
                    self.pokemonWaterList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.bug.rawValue {
                    self.pokemonBugList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.flying.rawValue {
                    self.pokemonFlyingList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.normal.rawValue {
                    self.pokemonNormalList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.electric.rawValue {
                    self.pokemonElectricList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.ground.rawValue {
                    self.pokemonGroundList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.fairy.rawValue {
                    self.pokemonFairyList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.grass.rawValue {
                    self.pokemonGrassList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.fighting.rawValue {
                    self.pokemonFightiningList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.psychic.rawValue {
                    self.pokemonPsychicList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.steel.rawValue {
                    self.pokemonSteelList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.rock.rawValue {
                    self.pokemonRockList.append(pokemon)
                }
                else if pokemon.type == Constants.PokeType.dragon.rawValue {
                    self.pokemonDragonList.append(pokemon)
                }
            }
        }
    }
    
    func setPokeListFilter(pokeType : Constants.PokeType){
        switch pokeType {
        case .all:
            pokemonShowList = pokemonAllList
        case .poison:
            pokemonShowList = pokemonPoisonList
        case .fire:
            pokemonShowList = pokemonFireList
        case .water:
            pokemonShowList = pokemonWaterList
        case .bug:
            pokemonShowList = pokemonBugList
        case .flying:
            pokemonShowList = pokemonFlyingList
        case .normal:
            pokemonShowList = pokemonNormalList
        case .electric:
            pokemonShowList = pokemonElectricList
        case .ground:
            pokemonShowList = pokemonGroundList
        case .fairy:
            pokemonShowList = pokemonFairyList
        case .grass:
            pokemonShowList = pokemonGrassList
        case .fighting:
            pokemonShowList = pokemonFightiningList
        case .psychic:
            pokemonShowList = pokemonPsychicList
        case .steel:
            pokemonShowList = pokemonSteelList
        case .ice:
            pokemonShowList = pokemonIceList
        case .rock:
            pokemonShowList = pokemonRockList
        case .dragon:
            pokemonShowList = pokemonDragonList
        }
    }
    
    
}
