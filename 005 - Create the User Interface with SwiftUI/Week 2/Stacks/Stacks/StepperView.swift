//
//  StepperView.swift
//  Stacks
//
//  Created by Shaheem PP on 29/11/23.
//

import SwiftUI

struct StepperView: View {
    
    @State private var value = 1
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Current value: \(value)")
                Stepper("Number of guests", value: $value, in:1...20)
            }
            .padding()
            .navigationTitle("Reservation form")
        }
    }
}

#Preview {
    StepperView()
}
