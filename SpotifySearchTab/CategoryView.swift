//
//  CategoryView.swift
//  SpotifySearchTab
//
//  Created by MacOS on 27/06/2022.
//

import SwiftUI

struct CategoryView: View {
    
    var category: String
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Text(category)
                .font(.largeTitle.bold())
                .foregroundColor(.white)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: "Rock")
    }
}
