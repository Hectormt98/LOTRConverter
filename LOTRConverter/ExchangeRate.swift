//
//  ExchangeRate.swift
//  Project12
//
//  Created by Hector Martinez on 5/9/24.
//

import SwiftUI


struct ExchangeRate: View {
    
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack{
            //sybmol, text, symbol
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}
#Preview {
    ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}
