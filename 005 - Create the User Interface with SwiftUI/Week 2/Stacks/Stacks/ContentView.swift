//
//  ContentView.swift
//  Stacks
//
//  Created by Shaheem PP on 29/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.gray)
            Circle()
                .scale(x: 0.50, y: 0.50)
                .foregroundColor(Color.red)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text ("Hello, world!")
                HStack {
                    Button("One"){}
                    Button("Two"){}
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
