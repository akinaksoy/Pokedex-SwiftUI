//
//  PokeDetailView.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 29.05.2023.
//

import SwiftUI
import Kingfisher
struct PokeDetailView: View {
    var pokemon : Pokedex
    var body: some View {
        ZStack{
            Color(Constants.backgroundColor)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                KFImage(URL(string: pokemon.imageURL))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(Color(Constants.primaryColor))
                    .frame(width: 256,height: 256)
                DescriptionView(pokemon: pokemon)
                    .cornerRadius(20)
            }
            
        }
    }
}

struct PokeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokeDetailView(pokemon: Pokedex(attack: 64, defense: 62, description: "It is Fire Pokemon", evolutionChain: nil, height: 49, id: 4, imageURL: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", name: "Pikachu", type: "poison", weight: 24, pokedexDefense: nil))
    }
}
struct DescriptionView: View {
    let pokemon : Pokedex
    var body: some View {
        
            VStack(alignment: .leading) {
                HStack {
                    Text(pokemon.name.capitalized)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(Constants.textColor))
                    Spacer()
                    Image(pokemon.type)
                        .resizable()
                        .frame(width: 36,height: 36)
                }
                
                
                HStack {
                    Text("Description")
                        .fontWeight(.medium)
                        .padding(.vertical,8)
                        .foregroundColor(Color(Constants.textColor))
                    Spacer()
                    Text("Weight : \(pokemon.weight)")
                        .fontWeight(.medium)
                        .padding(.vertical,8)
                        .foregroundColor(Color(Constants.textColor))
                }
                
                Text(pokemon.description)
                    .lineSpacing(8)
                    .opacity(0.6)
                    .foregroundColor(Color(Constants.textColor))
                
                HStack {
                    VStack {
                        HStack {
                            Image("sword")
                                .resizable()
                                .frame(width: 24,height: 24)
                            Text("Attack")
                                .fontWeight(.medium)
                                .padding(.vertical,8)
                                .foregroundColor(Color(Constants.textColor))
                        }
                        HStack(spacing: 4) {
                            ForEach(0 ..< (pokemon.attack/20)) {item in
                                Image("star")
                            }
                            Text("(\(pokemon.attack))")
                                .opacity(0.5)
                                .padding(.leading,8)
                                .foregroundColor(Color(Constants.textColor))
                            Spacer()
                        }.padding(.leading)
                    }
                    Spacer()
                    VStack {
                        HStack {
                            Image("shield")
                                .resizable()
                                .frame(width: 24,height: 24)
                            Text("Deffence")
                                .fontWeight(.medium)
                                .padding(.vertical,8)
                                .foregroundColor(Color(Constants.textColor))
                        }
                        
                        HStack(spacing: 4) {
                            ForEach(0 ..< (pokemon.defense/20)) {item in
                                Image("star")
                                
                            }
                            
                            Text("(\(pokemon.defense))")
                                .opacity(0.5)
                                .padding(.leading,8)
                                .foregroundColor(Color(Constants.textColor))
                            Spacer()
                        }.padding(.leading)
                    }
                }.padding()
            }
        
        .padding()
        .background(Color(Constants.backgroundColor))
        .cornerRadius(40)
    }
}
