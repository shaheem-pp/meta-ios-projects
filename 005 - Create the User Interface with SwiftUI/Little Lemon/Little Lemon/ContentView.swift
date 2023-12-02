//
//  ContentView.swift
//  Little Lemon
//
//  Created by Shaheem PP on 08/11/23.
//

import SwiftUI



struct ContentView: View {
    
    
    var body: some View {
        
        
        Spacer()
        HStack {
            Spacer()
            Image(systemName: "line.horizontal.3")
                .onTapGesture {
                    print("Line Horizontal Clicked")
                }
            Spacer()
            Image(systemName: "star")
                .onTapGesture {
                    print("Star Clicked")
                }
            Spacer()
            Image(systemName: "house")
                .onTapGesture {
                    print("House Clicked")
                }
            Spacer()
            Image(systemName: "heart")
                .onTapGesture {
                    print("Heart Clicked")
                }
            Spacer()
            Image(systemName: "gear")
                .onTapGesture {
                    print("Gear Clicked")
                }
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.accentColor)
    }
    
}

#Preview {
    ContentView()
}
