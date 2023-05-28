//
//  PokeHeaderView.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 29.05.2023.
//

import SwiftUI
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
