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
                    .padding()
                
                // currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases){currency in
                        CurrencyIcon(CurrencyImage: currency.image, CurrencyName: currency.name)
                    }
                }
                    // text
                    Text("Select the currency you would like to convert to:")
                        .fontWeight(.bold)
                        .padding()

                    // currency icons
                   LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                       ForEach(Currency.allCases){currency in
                           CurrencyIcon(CurrencyImage: currency.image, CurrencyName: currency.name)
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

