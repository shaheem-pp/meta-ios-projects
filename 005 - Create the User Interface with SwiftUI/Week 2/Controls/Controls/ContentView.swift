import SwiftUI

struct ContentView: View {
    @State private var reservationDate = Calendar.current.date(bySettingHour: 21, minute: 0, second: 0, of: Date()) ?? Date()
    @State private var isConfirmed = false
    
    var body: some View {
        VStack {
            Text("Enter a Date of Reservation")
            DatePicker(
                "", selection: $reservationDate,
                displayedComponents: [.date, .hourAndMinute]
            )
            .labelsHidden()
            .onChange(of: reservationDate, {
                isConfirmed = false
            })
            .datePickerStyle(GraphicalDatePickerStyle())
            
            Button("Confirm", action: {
                print("Confirmed")
                isConfirmed = true
            })
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
        }
        .padding()
        .sheet(isPresented: $isConfirmed, content: {
            ConfirmationView(reservationDate: reservationDate, isConfirmed: $isConfirmed)
        })
    }
}

struct ConfirmationView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var reservationDate: Date
    @Binding var isConfirmed: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Text("Reservation Confirmed")
                .padding(0)                
            Text("\(formattedDate())")
                .padding()
            Button("Go Back", action: {
                isConfirmed = false
                presentationMode.wrappedValue.dismiss()
            })
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
            Spacer()
        }
        .padding()
    }
    
    func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMMM yyyy, EEEE, h:mm a"
        return formatter.string(from: reservationDate)
    }
}



#Preview {
    ContentView()
}
