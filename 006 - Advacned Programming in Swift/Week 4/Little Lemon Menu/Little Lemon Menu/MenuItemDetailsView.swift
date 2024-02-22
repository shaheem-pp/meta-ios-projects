//
//  MenuItemDetailsView.swift
//  Little Lemon Menu
//
//  Created by Shaheem PP on 22/02/24.
//

import SwiftUI



struct MenuItemStruct: Identifiable {
    let id = UUID()
    let title: String
    let ingredients: [Ingredient]
}

struct MenuItemDetailsView: View {
    var itemTitle: String
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(itemTitle)")
                .font(.title)
                .multilineTextAlignment(.leading)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, height: 400)
                    .clipped()
                
                Text("Price:")
                    .fontWeight(.heavy)
                Text("10.99")
                Text("Ordered:")
                    .fontWeight(.heavy)
                Text("1000")
                Text("Ingredients")
                    .fontWeight(.heavy)
                Text("Spinach")
                Text("Brocolli")
                Text("Carrot")
                Text("Pasta")
            }
        }
    }
}

#Preview {
    MenuItemDetailsView(itemTitle: "Title")
}
