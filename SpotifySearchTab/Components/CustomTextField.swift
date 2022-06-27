//
//  CustomTextField.swift
//  SpotifySearchTab
//
//  Created by MacOS on 27/06/2022.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
        
    var body: some View {
        ZStack{
            Color.white
            HStack{
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                TextField("Artists, songs or podcasts", text: $text)
            }
        }
        .frame(height: 55)
        .cornerRadius(10)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""))
    }
}
