//
//  ReservationView.swift
//  Little Lemon
//
//  Created by Shaheem PP on 12/12/23.
//

import SwiftUI

struct ReservationView: View {
    @ObservedObject var reservationDataModel = ReservationDataModel.shared
    
    var body: some View {
        VStack {
            if let formData = reservationDataModel.formData {
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        Section(header: Text("Event Details").font(.headline).fontWeight(.bold)) {
                            ReservationDetailRow(title: "Event Name", value: formData.eventName)
                            ReservationDetailRow(title: "Location Name", value: formData.locationName)
                            ReservationDetailRow(title: "Location Details", value: formData.locationSubTitle)
                            ReservationDetailRow(title: "Selected Date", value: formattedDate)
                        }
                        
                        Section(header: Text("Contact Information").font(.headline).fontWeight(.bold)) {
                            ReservationDetailRow(title: "Full Name", value: formData.fullName)
                            ReservationDetailRow(title: "Phone Number", value: formData.phoneNumber)
                            ReservationDetailRow(title: "Email", value: formData.email)
                        }
                        
                        Section(header: Text("Additional Information").font(.headline).fontWeight(.bold)) {
                            ReservationDetailRow(title: "Special Request", value: formData.specialRequest)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } else {
                Text("No data saved.")
            }
        }
        .navigationBarTitle("Reservation Details", displayMode: .inline)
    }
    
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: reservationDataModel.formData?.selectedDate ?? Date())
    }
}

struct ReservationDetailRow: View {
    var title: String
    var value: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)
                .fontWeight(.bold)
            
            Spacer()
            
            Text(value)
                .font(.body)
        }
    }
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}
