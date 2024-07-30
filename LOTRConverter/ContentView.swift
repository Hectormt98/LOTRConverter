import SwiftUI

struct ContentView: View {
    
    @State var showExchangeInfo = false
    @State var showSelectCurrency = false
    @State var leftAmount = ""
    @State var rightAmount = ""

    @State var leftCurrency: Currency = .silverPiece
    @State var rightCurrency: Currency = .goldPenny
    
    var body: some View {
        ZStack {
            
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            // backgrond image
            
            
            VStack {
                // prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // Currency conversion section
                
                
                HStack {
                    
                    // left conversion section
                    
                    VStack {
                        // currency
                        HStack {
                            
                            // image
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                               
                            // text
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        
                        // left Textfield
                   TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                    
                
                    // equal sign
                    Image(systemName: "equal")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .symbolEffect(.pulse)
                    
                    // right conversion section
                    
                    VStack {
                        // currency
                        HStack {
                            // image
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)

                            // text
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        
                        // right Textfield
                        TextField("Amount", text: $rightAmount)
                                 .textFieldStyle(.roundedBorder)
                   
                    }
                }
                .padding()
                .background(.black.opacity(0.3))
                .clipShape(.capsule)
                Spacer()
                // Info button
                
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                  
                        
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchangeInfo()
                    }
                    .sheet(isPresented: $showSelectCurrency) {
                        SelectCurrency(topCurrency: leftCurrency,
                        bottomCurrency: rightCurrency)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
