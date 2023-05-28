//
//  CategoryListView.swift
//  Pokedex-SwiftUI
//
//  Created by Akın Aksoy on 29.05.2023.
//

import SwiftUI
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
