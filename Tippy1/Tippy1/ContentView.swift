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
    @State public var total = 0.0

    var body: some View {
        VStack {
            HStack {
                Text("Bill Amount")
                TextField("Enter Bill Amount", text: .constant("")).textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Text("Tip %")
            Slider(value: $tip, in: 0...25)
            Text("\(Int(tip))")
            HStack {
                Text("Total")
                Text("$\(total)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
