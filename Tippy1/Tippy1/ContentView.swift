//
//  ContentView.swift
//  Tippy1
//
//  Created by Ayesha Khan on 11/11/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var tip = 0.0
    @State private var total = 0.0
    @State private var amount = ""

    var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "coins (2)"))
                .padding(.horizontal, 20.0)
                .frame(width: 40.0, height: 40.0)
            VStack {
                HStack {
                    Text("Bill Amount")
                        .font(.headline)
                        .fontWeight(.regular)
                        
                        
                    TextField("Enter Bill Amount", text: $amount).padding().textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.decimalPad)
                }
                .padding(.horizontal, 13.0)
                Text("Tip %")
                    .font(.headline)
                    .fontWeight(.regular)
                Slider(value: $tip, in: 0...25)
                    .padding(.horizontal, 13.0)
                if tip != 0 {
                    Text("\(Int(tip))")
                }
                HStack {
                    Text("Total")
                        .font(.largeTitle)
                        .fontWeight(.light)
                    Text("$\(String(format: "%.2f", (Double(amount) ?? 0.0) + (Double(amount) ?? 0.0)*(Double(Int(tip)) * 0.01)))")
                        .font(.largeTitle)
                        .fontWeight(.thin)
                }
                .padding(.top, 20.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// <div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
