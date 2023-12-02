//
//  DatePickerView.swift
//  Stacks
//
//  Created by Shaheem PP on 29/11/23.
//

import SwiftUI

struct DatePickerView: View {
    @State var selectedDate = Date()
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        
        
        NavigationView {
            Form {
                Section {
                    DatePicker(
                        selection: $selectedDate,
                        in: dateClosedRange,
                        displayedComponents: .date,
                        label: { Text("Due Date") }
                    )
                }
            }
        }
    }
}

#Preview {
    DatePickerView()
}
