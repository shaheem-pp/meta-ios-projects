//
//  ContentView.swift
//  Gestures and callbacks
//
//  Created by Shaheem PP on 02/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var flag = false
    var body: some View {
        Text(flag ? "Switch to Yellow" : "Switch to Green" )
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(15)
            .frame(width: 300)
            .background(flag ? Color.green : Color.yellow)
            .onTapGesture {
                flag.toggle()
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ContentView()
}
