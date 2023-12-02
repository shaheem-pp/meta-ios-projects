//
//  ToggleView.swift
//  Stacks
//
//  Created by Shaheem PP on 29/11/23.
//

import SwiftUI

struct ToggleView: View {
    @State var isShowing = true
    var body: some View {
        Toggle(isOn: $isShowing) {
            Text("Hello World")
        }
    }
}

#Preview {
    ToggleView()
}
