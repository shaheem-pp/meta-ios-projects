//
//  FormView.swift
//  Little Lemon
//
//  Created by Shaheem PP on 10/12/23.
//

import SwiftUI

struct FormView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var fullName: String = ""
    @State private var phoneNumber: String = ""
    @State private var email: String = ""
    @State private var selectedDate = Calendar.current.date(byAdding: .hour, value: 24, to: Date()) ?? Date()
    @State private var eventName: String = ""
    @State private var specialRequest: String = ""
    
    @State var locationName: String
    @State var locationSubtitle: String
    
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    
    var body: some View {
        Form {
            Section(header: Text("Event Information")) {
                VStack(alignment: .leading) {
                    Text(locationName)
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    
                    Text(locationSubtitle)
                        .font(.body)
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                TextField("Event Name", text: $eventName)
                DatePicker(
                    "Select a date and time",
                    selection: $selectedDate,
                    displayedComponents: [.date, .hourAndMinute]
                )
                .datePickerStyle(DefaultDatePickerStyle())
                .labelsHidden()
            }
            
            Section(header: Text("Contact Information")) {
                inputField(label: "Name", placeholder: "Enter Full Name", text: $fullName)
                    .textContentType(.name)
                numericInputField(label: "Phone", placeholder: "Enter Phone Number", text: $phoneNumber)
                    .keyboardType(.phonePad)
                    .textContentType(.telephoneNumber)
                emailInputField(label: "Email", placeholder: "Enter Email", text: $email)
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
            }
            
            Section(header: Text("Others")){
                TextField("Add any Special Request(optional)", text: $specialRequest)
                HStack {
                    Spacer()
                    Button(action: {
                        if validateForm() {
                            let formData = ReservationFormData(
                                fullName: fullName,
                                phoneNumber: phoneNumber,
                                email: email,
                                selectedDate: selectedDate,
                                eventName: eventName,
                                specialRequest: specialRequest,
                                locationName: locationName,
                                locationSubTitle: locationSubtitle
                            )
                            ReservationDataModel.shared.saveFormData(formData)
                            if let savedData = ReservationDataModel.shared.formData {
                                print("Saved Form Data:")
                                print("Full Name: \(savedData.fullName)")
                                print("Phone Number: \(savedData.phoneNumber)")
                                print("Email: \(savedData.email)")
                                print("Selected Date: \(savedData.selectedDate)")
                                print("Event Name: \(savedData.eventName)")
                                print("Special Request: \(savedData.specialRequest)")
                                print("Location Name: \(savedData.locationName)")
                                print("Location Subtitle: \(savedData.locationSubTitle)")
                            } else {
                                print("No data saved.")
                            }
                            
                            showAlert = true
                            alertTitle = "Success"
                            alertMessage = "Form submitted successfully!"
                        } else {
                            showAlert = true
                            alertTitle = "Error"
                            alertMessage = "Please fill in all required fields."
                        }
                    }) {
                        Text("Submit").frame(maxWidth: .infinity)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.accentColor)
                            .cornerRadius(50)
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text(alertTitle),
                            message: Text(alertMessage),
                            dismissButton: .default(Text("OK")) {
                                presentationMode.wrappedValue.dismiss()
                            }
                        )
                    }

                    Spacer()
                }
            }
        }
        .navigationTitle("Reservation")
        .edgesIgnoringSafeArea(.horizontal)
    }
    
    
    private func validateForm() -> Bool {
        guard isValidEmail(email) else {
            print("Invalid email")
            return false
        }
        
        guard isValidPhoneNumber(phoneNumber) else {
            print("Invalid phone number")
            return false
        }
        
        guard !fullName.isEmpty else {
            print("Full name is empty")
            return false
        }
        
        print("Form validation successful")
        return true
    }
    
    
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}")
        return emailPredicate.evaluate(with: email)
    }
    
    
    private func isValidPhoneNumber(_ phoneNumber: String) -> Bool {
        let phonePredicate = NSPredicate(format: "SELF MATCHES %@", "^[0-9]{10}$")
        return phonePredicate.evaluate(with: phoneNumber)
    }
    
    private func inputField(label: String, placeholder: String, text: Binding<String>) -> some View {
        HStack {
            Text("\(label): ")
            TextField(placeholder, text: text)
        }
    }
    
    private func numericInputField(label: String, placeholder: String, text: Binding<String>) -> some View {
        HStack {
            Text("\(label): ")
            TextField(placeholder, text: text)
                .keyboardType(.numberPad)
        }
    }
    
    private func emailInputField(label: String, placeholder: String, text: Binding<String>) -> some View {
        HStack {
            Text("\(label): ")
            TextField(placeholder, text: text)
                .keyboardType(.emailAddress)
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(locationName: "No Name", locationSubtitle: "No Subtitle")
    }
}
