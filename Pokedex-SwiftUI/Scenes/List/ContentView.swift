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
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                PokeHeaderView()
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.categoriesList.indices) {index in
                            
                            CategoryListView(isActive: index == selectedIndex,category: viewModel.categoriesList[index]).onTapGesture {
                                selectedIndex = index
                            }
                        }
                        
                    }
                }
                
                Spacer()
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
    var body: some View {
        HStack {
            Text("Pokedex App")
                .foregroundColor(.white)
                .font(.system(size: 24))
                .padding(.leading)
                .fontWeight(.bold)
            Spacer()
            Image("pokeball")
                .resizable()
                .frame(width: 60,height: 60)
                .padding()
        }
        .background(Color("pokeRed"))
        .padding()
        .cornerRadius(48)
        .padding(.vertical)
    }
}

struct CategoryListView: View {
    let isActive: Bool
    let category : String
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isActive ? Color(.blue) : Color.blue.opacity(0.5))
                .frame(width: 100,height: 40)
            HStack {
                Image(category)
                    .resizable()
                    .frame(width: 24,height: 24)
                Text(category)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            
        }
    }
    
}
