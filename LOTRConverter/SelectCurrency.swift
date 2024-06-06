//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Hector Martinez on 6/4/24.
//

import SwiftUI

struct SelectCurrency: View {
    
    
    @Environment(\.dismiss) var dismiss
    
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
                
                // currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
              CurrencyIcon(CurrencyImage: .copperpenny, CurrencyName: "Copper Penny")
              CurrencyIcon(CurrencyImage: .silverpenny, CurrencyName: "Silver Penny")
              CurrencyIcon(CurrencyImage: .silverpiece, CurrencyName: "Silver Piece")
              CurrencyIcon(CurrencyImage: .goldpenny, CurrencyName: "Gold Penny")
              CurrencyIcon(CurrencyImage: .goldpiece, CurrencyName: "Gold Piece")
                    }
            
                    
                    
                    
                    // text
                    Text("Select the currency you eould like to convert to:")
                        .fontWeight(.bold)
                    
                    
                    // currency icons
                   LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                       ForEach(0..<5){_ in
                           CurrencyIcon(CurrencyImage: .copperpenny, CurrencyName: "Copper Penny")
                           
                       }
                    
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
    }
    
    #Preview {
        SelectCurrency()
    }

