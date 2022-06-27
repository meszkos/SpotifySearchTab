//
//  CategoryCell.swift
//  SpotifySearchTab
//
//  Created by MacOS on 27/06/2022.
//

import SwiftUI

struct CategoryCell: View {
    
    var category: String
    var color: Color
    
    var body: some View {
        
        NavigationLink{
            CategoryView(category: category)
        }label: {
            VStack(){
                HStack{
                    Text(category)
                        .font(.title2.bold())
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding()
                
                Spacer()
            }
            .frame(height: 100)
            .background(color)
            .cornerRadius(8)
        }
    }
}

struct CategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell(category: "Hip-Hop", color: .color1)
    }
}
