//
//  LocationItemView.swift
//  Little Lemon
//
//  Created by Shaheem PP on 10/12/23.
//

import SwiftUI

struct LocationItemView: View {
    @Binding var locationName: String
    @Binding var locationSubTitle: String
    
    var body: some View {
        NavigationLink(destination: FormView(locationName: locationName,locationSubtitle: locationSubTitle)) {
            VStack(alignment: .leading) {
                Text(locationName)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                
                Text(locationSubTitle)
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}



#Preview {
    LocationItemView(locationName: .constant("Los Angeles"), locationSubTitle: .constant("Downtown - 222 111 000"))
}
