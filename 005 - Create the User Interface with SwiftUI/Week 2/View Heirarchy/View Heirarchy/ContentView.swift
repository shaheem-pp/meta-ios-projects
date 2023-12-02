//
//  ContentView.swift
//  View Heirarchy
//
//  Created by Shaheem PP on 02/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var showLogo = true
    
    var body: some View {
        Spacer()
        ImageContentView(showLogo: $showLogo)
        Spacer()
        Toggle("Show Content", isOn: $showLogo)
            .padding()
    }
}

#Preview {
    ContentView()
}
