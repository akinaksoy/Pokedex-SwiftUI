//
//  ContentView.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 28.05.2023.
//

import SwiftUI
import Kingfisher
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

struct PokeHeaderView: View {
    var backgroundColor : String
    var body: some View {
        HStack {
            Text("Pokedex App")
                .foregroundColor(Color(Constants.textColor))
                .font(.system(size: 24))
                .padding(.leading)
                .fontWeight(.bold)
            Spacer()
            Image("pokeball")
                .resizable()
                .frame(width: 60,height: 60)
                .padding()
        }
        .background(Color(backgroundColor))
        .padding()
        .cornerRadius(48)
        .padding(.vertical)
    }
}

struct CategoryListView: View {
    let isActive: Bool
    let category : String
    let backgroundColor : String
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isActive ? Color(backgroundColor) : Color(backgroundColor).opacity(0.5))
                .frame(width: 100,height: 40)
            HStack {
                Image(category)
                    .resizable()
                    .frame(width: 24,height: 24)
                Text(category.capitalized)
                    .foregroundColor(Color(Constants.textColor))
                    .fontWeight(.bold)
            }
            
        }
    }
    
}
struct PokeCartView: View {
    @ObservedObject var viewModel : PokedexViewModel

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                
                ForEach(viewModel.pokemonShowList,id: \.id) { item in
                    ZStack{
                        Color(Constants.secondaryColor)
                        VStack {
                        
                            KFImage(URL(string: item.imageURL))
                            .resizable()
                            .frame(width: 80,height: 80)
                            Text(item.name.capitalized)
                            .frame(maxWidth: .infinity)
                            .padding(.top)
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(Color(Constants.textColor))
                        }
                        .padding()
                    }
                    .cornerRadius(24)
                    
                }
            }
            .padding()
        }
    }
}
