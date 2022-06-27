//
//  ContentView.swift
//  SpotifySearchTab
//
//  Created by MacOS on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Text("Search")
                    .font(.title.bold())
                    .foregroundColor(.white)
                CustomTextField(text: $searchText)
                ScrollView{
                    
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
