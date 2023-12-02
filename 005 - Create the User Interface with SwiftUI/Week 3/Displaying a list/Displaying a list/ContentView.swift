//
//  ContentView.swift
//  Displaying a list
//
//  Created by Shaheem PP on 02/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = Model()
    
    var body: some View {
        VStack {
            List {
                ForEach(model.meals) { item in
                    Text(item.name)
                }
            }
        }
        ScrollView {
            ForEach(1...5, id: \.self) {number in
                Text("Little Lemon Restaurant")
                Text(" ")
                Text("Reservation number: \(number)\n")
            }
        }
    }
}

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

class Model: ObservableObject {
    @Published var meals: [Item] = menuItems()
    
    static func menuItems() -> [Item] {
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocado Toast"),
            Item(name: "Tortellini"),
            Item(name: "Pizza")
        ]
    }
}

#Preview {
    ContentView()
}
