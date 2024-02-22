//
//  MenuItemsView.swift
//  Little Lemon Menu
//
//  Created by Shaheem PP on 22/02/24.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
}

class MenuItemsViewModel: ObservableObject {
    @Published var foodItems: [MenuItem] = (1...12).map { MenuItem(name: "Food \($0)") }
    @Published var drinkItems: [MenuItem] = (1...8).map { MenuItem(name: "Drink \($0)") }
    @Published var dessertItems: [MenuItem] = (1...4).map { MenuItem(name: "Dessert \($0)") }
}

struct MenuItemsView: View {
    @StateObject private var viewModel = MenuItemsViewModel()
    
    @State private var showingPopover = false
    
    var itemTitle: String
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    SectionHeaderView(title: "Food")
                    ItemsGridView(items: viewModel.foodItems)
                    
                    SectionHeaderView(title: "Drinks")
                    ItemsGridView(items: viewModel.drinkItems)
                    
                    SectionHeaderView(title: "Desserts")
                    ItemsGridView(items: viewModel.dessertItems)
                }
                .padding()
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showingPopover = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .popover(isPresented: $showingPopover) {
                MenuItemsOptionView()
            }
        }
    }
}

struct SectionHeaderView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ItemsGridView: View {
    let items: [MenuItem]
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 3), spacing: 20) {
            ForEach(items) { item in
                NavigationLink(destination: MenuItemDetailsView(itemTitle: item.name)) {
                    VStack {
                        Rectangle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.black)
                        Text(item.name)
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}


#Preview {
    MenuItemsView(itemTitle: "Title")
}
