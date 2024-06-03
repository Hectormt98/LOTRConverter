import SwiftUI

struct ContentView: View {
    
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    var numberOfCurrencies = 5
    let scaryString = "Boo"
    
    
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
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                               
                            // text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        
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
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)

                            // text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        .padding(.bottom, -5)
                        
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
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
