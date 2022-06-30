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
                search
                CustomTextField(text: $searchText)
                ScrollView{
                    genresHeader
                    topGenresRow
                        .padding(.bottom, 8)
                    topGenresRow
                    browseAllHeader
                    HStack(spacing: 15){
                        VStack(spacing: 15){
                            ForEach(searchResults1, id: \.self){
                                category in
                                CategoryCell(category: category, color: K.cellColors.randomElement()!)
                            }
                            .searchable(text: $searchText)
                        }
                        VStack(spacing: 15){
                            ForEach(searchResults2, id: \.self){
                                category in
                                CategoryCell(category: category, color: K.cellColors.randomElement()!)
                            }
                            .searchable(text: $searchText)
                        }
                       
                    }
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

extension ContentView{
    
//MARK: - Data
    var searchResults1: [String] {
            if searchText.isEmpty {
                return getLeftCat()
            } else {
                return getLeftCat().filter { $0.contains(searchText) }
            }
        }
    var searchResults2: [String] {
            if searchText.isEmpty {
                return getRightCat()
            } else {
                return getRightCat().filter { $0.contains(searchText) }
            }
        }
    
//MARK: - Texts
    
    var search: some View{
        Text("Search")
            .font(.title.bold())
            .foregroundColor(.white)
    }
    var genresHeader: some View{
        HStack{
            Text("Your top genres")
                .foregroundColor(.white)
                .font(.title3).bold()
            Spacer()
        }
        .padding(.vertical)
    }
    var browseAllHeader: some View{
        HStack{
            Text("Browse all")
                .foregroundColor(.white)
                .font(.title3).bold()
            Spacer()
        }
        .padding(.vertical)
    }
    

//MARK: - Row
    var topGenresRow: some View{
        HStack(spacing: 15){
            CategoryCell(category: K.categories.randomElement()!, color: K.cellColors.randomElement()!)
            CategoryCell(category: K.categories.randomElement()!, color: K.cellColors.randomElement()!)
        }
    }
 
//MARK: - Methods
    
    func getLeftCat() -> [String]{
        let index = (K.categories.count - 1) / 2
        var array: [String] = []
        for i in 0...index{
            array.append(K.categories[i])
        }
        return array
    }
    func getRightCat() -> [String]{
        let leftIndex = (K.categories.count ) / 2
        let index = K.categories.count - 1
        var array: [String] = []
        for i in leftIndex...index{
            array.append(K.categories[i])
        }
        return array
    }
    
    
}
