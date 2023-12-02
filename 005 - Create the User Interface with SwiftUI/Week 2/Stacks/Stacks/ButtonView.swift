//
//  ButtonView.swift
//  Stacks
//
//  Created by Shaheem PP on 29/11/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(role: .destructive) {
            print("do something!")
        } label: {
            HStack {
                Image(systemName: "trash")
                Text("")
            }
        }
    }
}

#Preview {
    ButtonView()
}
