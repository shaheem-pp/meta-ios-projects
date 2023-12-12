//
//  ReservationFormDataModel.swift
//  Little Lemon
//
//  Created by Shaheem PP on 12/12/23.
//

import Foundation

struct ReservationFormData {
    var fullName: String
    var phoneNumber: String
    var email: String
    var selectedDate: Date
    var eventName: String
    var specialRequest: String
    var locationName: String
    var locationSubTitle: String
}



// Use a singleton pattern for ReservationDataModel
class ReservationDataModel: ObservableObject {
    // Shared instance of the data model
    static let shared = ReservationDataModel()
    
    // Published property to observe changes
    @Published var formData: ReservationFormData?
    
    // Private initializer to prevent creating additional instances
    private init() {}
    
    // Function to save form data
    func saveFormData(_ data: ReservationFormData) {
        formData = data
    }
}

