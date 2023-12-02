//
//  ContentView.swift
//  Gestures
//
//  Created by Shaheem PP on 02/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = 0.0
    @State private var finalAmount = 1.0
    
    
    var body: some View {
        Image("LittleLemon_Logo")
            .scaleEffect(finalAmount + amount)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in amount = value - 1
                    }
                    .onEnded { value in
                        finalAmount += amount
                        amount = 0
                    }
            )
    }
}

#Preview {
    ContentView()
}
