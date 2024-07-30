//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Hector Martinez on 6/4/24.
//

import SwiftUI

struct SelectCurrency: View {
    
    
    @Environment(\.dismiss) var dismiss
    @State var topCurrency: Currency = .copperPenny
    @State var bottomCurrency: Currency = .goldPiece
    
    var body: some View {
        ZStack {
            
            //parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .padding()
                
                // currency icons
                IconGrid(currency: topCurrency)
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding()
                
                // currency icons
                IconGrid(currency: bottomCurrency)
                // Done buttons
                Button("Done") {
                    dismiss()
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}

