//
//  ContentView.swift
//  List of Icons
//
//  Created by Shaheem PP on 02/12/23.
//

import SwiftUI

struct IdentifiableString: Identifiable {
    let id = UUID()
    let value: String
}

struct ContentView: View {
    let iconsList = [
        "house.fill",
        "car.fill",
        "bicycle",
        "star.fill",
        "heart.fill",
        "square.fill",
        "circle.fill",
        "triangle.fill",
        "pencil",
        "person.fill",
        "gearshape.fill",
        "flame.fill",
        "book.fill",
        "cloud.fill",
        "sun.max.fill",
        "moon.fill",
        "leaf.fill",
        "flag.fill",
        "tag.fill",
        "bolt.fill"
    ]
    
    let houseIcons = [
        "house.fill",
        "triangle.fill",
        "square.fill"
    ]
    
    let vehicleIcons = [
        "car.fill",
        "bicycle",
        "bolt.fill"
    ]
    
    let natureIcons = [
        "star.fill",
        "heart.fill",
        "leaf.fill"
    ]
    
    @State private var selectedIcon: IdentifiableString?
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("All Icons")) {
                    ForEach(iconsList, id: \.self) { icon in
                        ListItemView(iconName: icon)
                            .onTapGesture {
                                selectedIcon = IdentifiableString(value: icon)
                            }
                    }
                }
                Section(header: Text("House Icons")) {
                    ForEach(houseIcons, id: \.self) { icon in
                        ListItemView(iconName: icon)
                            .onTapGesture {
                                selectedIcon = IdentifiableString(value: icon)
                            }
                    }
                }
                Section(header: Text("Vehicle Icons")) {
                    ForEach(vehicleIcons, id: \.self) { icon in
                        ListItemView(iconName: icon)
                            .onTapGesture {
                                selectedIcon = IdentifiableString(value: icon)
                            }
                    }
                }
                Section(header: Text("Nature Icons")) {
                    ForEach(natureIcons, id: \.self) { icon in
                        ListItemView(iconName: icon)
                            .onTapGesture {
                                selectedIcon = IdentifiableString(value: icon)
                            }
                    }
                }
            }
            .navigationBarTitle("Icons List")
            .alert(item: $selectedIcon) { selectedIcon in
                Alert(title: Text("Icon List"), message: Text("\(selectedIcon.value)"))
            }
        }
    }
}


#Preview {
    ContentView()
}
