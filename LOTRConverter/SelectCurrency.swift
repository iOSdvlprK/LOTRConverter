//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by joe on 7/28/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var topCurrency = Currency.silverPenny
    @State var bottomCurrency: Currency = .goldPenny
    
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
                IconGrid(currency: topCurrency)
                
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                // currency icons
                IconGrid(currency: bottomCurrency)
                
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
