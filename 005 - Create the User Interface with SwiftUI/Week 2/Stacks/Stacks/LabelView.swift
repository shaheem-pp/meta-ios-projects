//
//  LabelView.swift
//  Stacks
//
//  Created by Shaheem PP on 29/11/23.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        
        Label("Menu", systemImage: "fork.knife")
            .labelStyle(.titleAndIcon)
    }
}

#Preview {
    LabelView()
}
