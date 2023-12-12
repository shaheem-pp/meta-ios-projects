//
//  LocationsView.swift
//  Little Lemon
//
//  Created by Shaheem PP on 10/12/23.
//

import SwiftUI

struct LocationsView: View {
    
    let locationMap = [
        [
            "name": "Las Vegas",
            "subTitle": "Downtown - 222 111 000"],
        [
            "name": "Los Angeles",
            "subTitle": "North Hollywood - 123 111 000"],
        [
            "name": "Venice",
            "subTitle": "Venice - 222 121 000"],
        [
            "name": "Nevada",
            "subTitle": "Venice - 222 111 012"],
        [
            "name": "San Francisco",
            "subTitle": "Union Square - 221 131 500"],
    ]
    
    var body: some View {
//        NavigationView {
            VStack {
                ForEach(locationMap, id: \.self) { location in
                    NavigationLink(
                        destination: FormView(locationName: location["name"] ?? "Name", locationSubtitle: location["subTitle"] ?? "Sub Title")
                            .navigationBarTitle("", displayMode: .inline),
                        label: {
                            LocationItemView(locationName: .constant(location["name"] ?? ""), locationSubTitle: .constant(location["subTitle"] ?? ""))
                        })
                    .background(
                        VStack {
                            Spacer()
                        }
                    )
                    .navigationBarHidden(true)
                }
            }
//        }
    }
}



#Preview {
    LocationsView()
}
