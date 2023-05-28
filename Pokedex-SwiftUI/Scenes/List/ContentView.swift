//
//  ContentView.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 28.05.2023.
//

import SwiftUI
struct ContentView: View {
    @State private var selectedIndex : Int = 0
    @ObservedObject var viewModel = PokedexViewModel()
    var body: some View {
        ZStack {
            Color(Constants.backgroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                PokeHeaderView(backgroundColor: Constants.primaryColor)
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.categoriesList.indices) {index in
                            
                            CategoryListView(isActive: index == selectedIndex,category: viewModel.categoriesList[index],backgroundColor: Constants.secondaryColor).onTapGesture {
                                selectedIndex = index
                                viewModel.setPokeListFilter(pokeType: viewModel.categoriesList[index] )
                                
                                
                            }
                        }
                        
                    }
                }
                PokeCartView(viewModel: viewModel)
                Spacer()
            }
            .onAppear {
                viewModel.fetchAllPokemon()
            }
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





