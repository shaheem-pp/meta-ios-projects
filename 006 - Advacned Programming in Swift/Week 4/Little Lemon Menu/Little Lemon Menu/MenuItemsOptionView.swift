//
//  MenuItemsOptionView.swift
//  Little Lemon Menu
//
//  Created by Shaheem PP on 22/02/24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Filter")
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
                .frame(width: .infinity)
        }
        List {
            Section(header: Text("Selected categories")) {
                Text("\(MenuCategory.Food.rawValue)")
                Text("\(MenuCategory.Dessert.rawValue)")
                Text("\(MenuCategory.Drink.rawValue)")
            }
            Section(header: Text("Sort by")) {
                Text("Most Popular")
                Text("Price $-$$$")
                Text("A-Z")
            }
        }.navigationTitle("Filter")
    }
}

#Preview {
    MenuItemsOptionView()
}
