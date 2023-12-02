//
//  ListItemView.swift
//  List of Icons
//
//  Created by Shaheem PP on 02/12/23.
//

import SwiftUI

struct ListItemView: View {
    @State var iconName: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
            Text(iconName)
        }
        .foregroundColor(.accentColor)
    }
}


#Preview {
    ListItemView(iconName: "house.fill")
}
