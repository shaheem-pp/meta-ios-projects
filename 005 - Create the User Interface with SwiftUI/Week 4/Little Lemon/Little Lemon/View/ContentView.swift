//
//  ContentView.swift
//  Little Lemon
//
//  Created by Shaheem PP on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // First Tab
            NavigationView{
                VStack {
                    Image("littleLemonLogo")
                        .frame(width: .infinity, height: 100)
                    Text("Select Location")
                        .padding(5)
                        .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.858))
                        .cornerRadius(10)
                    LocationsView()
                    Spacer()
                }
            }
            .navigationBarHidden(true)
            .tabItem {
                Label("New Reservations", systemImage: "plus")
            }
            
            // Second Tab
            
            ReservationView()
                .padding()
                .tabItem {
                    Label("Previous Reservations", systemImage: "calendar")
                }
        }
    }
}

#Preview {
    ContentView()
}
