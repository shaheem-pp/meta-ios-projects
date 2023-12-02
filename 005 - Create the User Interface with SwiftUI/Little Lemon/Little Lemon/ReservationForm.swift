//
//  ReservationForm.swift
//  Little Lemon
//
//  Created by Shaheem PP on 15/11/23.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName : String = ""
    var body: some View {
        Form{
            TextField("Enter Your Name: ",
                      text: $customerName,
                      onEditingChanged: {
                status in print(status)
            })
            .onSubmit({
                print("Submitted")
            })
            .onChange(of: customerName, perform: {
                newValue in print(newValue)
            })
        }
        .padding()
    }
}

#Preview {
    ReservationForm()
}
