//
//  CartView.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 29.05.2023.
//

import SwiftUI
import Kingfisher
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
