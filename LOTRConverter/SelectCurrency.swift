//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by joe on 7/28/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // parchment background image
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
                    ForEach(0..<5) { _ in
                        CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    }
                }
                
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                // currency icons
                
                // done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
