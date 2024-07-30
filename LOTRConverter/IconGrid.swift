//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Hector Martinez on 7/29/24.
//

import SwiftUI


struct IconGrid: View {
    
    @State var currency: Currency
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases){currency in
                if self.currency == currency {
                    CurrencyIcon(CurrencyImage: currency.image,
                                 CurrencyName: currency.name)
                    .shadow(color: .black,
                            radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth: 3)
                            .opacity(0.5)
                    }
                } else {
                    CurrencyIcon(CurrencyImage: currency.image,
                                 CurrencyName: currency.name)
                    .onTapGesture {
                        self.currency = currency
                    }
                }
            }
        }
    }
}

#Preview {
    IconGrid(currency: .silverPenny)
}
