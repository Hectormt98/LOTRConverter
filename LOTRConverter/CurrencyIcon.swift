//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by Hector Martinez on 6/4/24.
//

import SwiftUI



struct CurrencyIcon: View {
    
    let CurrencyImage: ImageResource
    let CurrencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // CUrrency Image
            Image(CurrencyImage)
                .resizable()
                .scaledToFit()
            
            //Currency Text
            Text(CurrencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown .opacity(0.75))
        }
                            
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
        
        
    }
}

#Preview {
    CurrencyIcon(CurrencyImage: .goldpiece, CurrencyName: "Gold Piece")
}
